import 'package:custom_timer/custom_timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
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

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Stack(
        children: [
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
}
