import 'package:custom_timer/custom_timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:spy/config.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:spy/widgets/show_ad_dialog.dart';
import 'package:vibration/vibration.dart';

class GameTimer extends StatefulWidget {
  const GameTimer({required this.duration, super.key});

  final int duration;

  @override
  State<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends State<GameTimer> with SingleTickerProviderStateMixin {
  late final CustomTimerController _controller = CustomTimerController(
    vsync: this,
    begin: Duration(minutes: widget.duration),
    end: Duration.zero,
    initialState: CustomTimerState.paused,
  );
  bool _adWidgetVisible = false;
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    super.initState();
    loadAd();

    // Verzögertes Starten der Animation
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _adWidgetVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1100),
            curve: Curves.fastEaseInToSlowEaseOut,
            top: _adWidgetVisible ? 150 : -60, // Startposition außerhalb des Bildschirms
            left: _adWidgetVisible ? 150 : -60,
            child: IconButton(
              icon: const Icon(Icons.live_tv, size: 35, color: Colors.white),
              onPressed: () {
                showPlatformDialog(
                  context: context,
                  builder: (context) => ShowAdDialog(
                    onYes: () => _interstitialAd?.show(),
                  ),
                );
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTimer(
                  controller: _controller,
                  builder: (state, time) {
                    _controller.state.addListener(() async {
                      if (_controller.remaining.value.seconds == '00' && _controller.remaining.value.minutes == '00') {
                        if (await Vibration.hasCustomVibrationsSupport() == true) {
                          Vibration.vibrate(
                            amplitude: 255,
                            duration: 50,
                            pattern: [
                              500,
                            ],
                          );
                        }
                        if (context.mounted) context.pushReplacement('/endgame');
                      }
                    });

                    return Text(
                      '${time.minutes}:${time.seconds} min',
                      style: const TextStyle(fontSize: 30),
                    );
                  },
                ).withPadding(Paddings.bottomLarger),
                SizedBox(
                  width: 300,
                  height: 80,
                  child: CustomButton(
                    title: 'timerPause'.tr(),
                    onPressed: () {
                      if (_controller.state.value == CustomTimerState.counting) {
                        _controller.pause();
                      } else {
                        _controller.start();
                      }
                    },
                  ).withPadding(Paddings.bottomLarge),
                ),
                SizedBox(
                  width: 300,
                  height: 80,
                  child: CustomButton(
                    title: 'timerAdd'.tr(),
                    onPressed: () {
                      _controller.add(const Duration(minutes: 1));
                    },
                  ).withPadding(Paddings.bottomLarge),
                ),
                SizedBox(
                  width: 300,
                  height: 80,
                  child: CustomButton(
                    title: 'timerStop'.tr(),
                    onPressed: () {
                      _controller.finish();
                    },
                  ).withPadding(Paddings.bottomLarge),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BannerAdWidget(),
          ),
        ],
      ),
    );
  }

  /// Loads an interstitial ad.
  void loadAd() {
    InterstitialAd.load(
        adUnitId: interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            _interstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }
}
