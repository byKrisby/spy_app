import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:spy/config.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({this.cBanner, super.key});

  final BannerAd? cBanner;

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? banner;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();

    if (await ConsentInformation.instance.canRequestAds()) {
      banner = (widget.cBanner ??
          BannerAd(
            listener: BannerAdListener(
              // Called when an ad is successfully received.
              onAdLoaded: (ad) {
                if (!mounted) {
                  ad.dispose();
                  return;
                }
                setState(() {
                  banner = ad as BannerAd;
                });
              },
              // Called when an ad request failed.
              onAdFailedToLoad: (ad, error) {
                debugPrint('BannerAd failed to load: $error');
                ad.dispose();
              },
            ),
            adUnitId: adUnitId,
            request: const AdRequest(),
            size: AdSize.banner,
          ))
        ..load();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (banner == null) {
      return const SizedBox();
    } else {
      return SizedBox(
        height: 50,
        child: AdWidget(
          ad: banner!,
        ),
      );
    }
  }
}
