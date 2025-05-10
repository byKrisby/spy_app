import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:spy/blocs/introduction_bloc.dart';
import 'package:spy/cubit/word_cubit.dart';
import 'package:spy/custom_icons.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/paddings.dart';
import 'package:spy/pages/introduction/introduction_page.dart';
import 'package:spy/pages/language_page.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:spy/widgets/news_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

import '../version_changelog/version_changelog.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isMobileAdsInitializeCalled = false;
  final params = ConsentRequestParameters();

  Future<bool> isPrivacyOptionsRequired() async {
    return await ConsentInformation.instance.getPrivacyOptionsRequirementStatus() ==
        PrivacyOptionsRequirementStatus.required;
  }

  void _initializeGoogleMobileAdsSDK() async {
    if (_isMobileAdsInitializeCalled) {
      return;
    }

    _isMobileAdsInitializeCalled = true;

    // Initialize the Mobile Ads SDK.
    MobileAds.instance.initialize();
  }

  @override
  void initState() {
    super.initState();

    // Request an update to consent information on every app launch.
    ConsentInformation.instance.requestConsentInfoUpdate(
      params,
      () async {
        ConsentForm.loadAndShowConsentFormIfRequired((loadAndShowError) async {
          if (loadAndShowError != null) {
            // Consent gathering failed.
          }
          // Redraw the app bar actions if a privacy options entry point is required.
          if (await isPrivacyOptionsRequired()) {
            setState(() {});
          }
          // Consent has been gathered
          if (await ConsentInformation.instance.canRequestAds()) {
            _initializeGoogleMobileAdsSDK();
          }
        });
      },
      (FormError error) {
        // Handle the error.
      },
    );

    loadAdsInAdvance();
  }

  Future<void> loadAdsInAdvance() async {
    if (await ConsentInformation.instance.canRequestAds()) {
      _initializeGoogleMobileAdsSDK();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntroductionBloc>.value(
      value: context.read<IntroductionBloc>(),
      child: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          return state.map(
            initial: (value) => LanguagePage(),
            introductionVisible: (value) => IntroductionPage(),
            introductionHidden: (value) => CustomScaffold(
              child: SafeArea(
                top: true,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.newspaper,
                              color: Colors.white,
                            ),
                            onPressed: () async {
                              List<String> changelog =
                                  await VersionChangelog().getChangelog(context.locale.countryCode ?? 'DE');

                              showPlatformDialog(
                                context: context,
                                builder: (BuildContext context) => NewsDialog(changelog: changelog),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              CustomIcons.instagram,
                              color: Colors.white,
                            ),
                            onPressed: () => launchUrl(Uri.parse('https://www.instagram.com/jeckmedia.apps/')),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('SPY', style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold))
                              .withPadding(Paddings.bottomLarge),
                          SizedBox(
                            width: 300,
                            height: 80,
                            child: BlocBuilder<WordCubit, List<Word>>(
                              builder: (context, wordState) {
                                return CustomButton(
                                  title: 'start'.tr(),
                                  onPressed: () {
                                    context.read<WordCubit>().getWords(context);

                                    context.push('/prep');
                                  },
                                );
                              },
                            ).withPadding(Paddings.bottomLarge),
                          ),
                          SizedBox(
                            width: 300,
                            height: 80,
                            child: CustomButton(
                              title: 'addCards'.tr(),
                              onPressed: () {
                                context.read<WordCubit>().getWords(context);
                                context.push('/cards');
                              },
                            ).withPadding(Paddings.bottomLarge),
                          ),
                          SizedBox(
                            width: 300,
                            height: 80,
                            child: CustomButton(
                              title: 'howToPlay'.tr(),
                              onPressed: () {
                                context.read<IntroductionBloc>().add(ShowIntroduction());
                              },
                            ).withPadding(Paddings.bottomLarge),
                          ).withPadding(Paddings.bottomLarge),
                          SizedBox(
                            width: 300,
                            height: 80,
                            child: CustomButton(
                              title: 'settings'.tr(),
                              onPressed: () {
                                context.push('/settings').then(
                                      (value) => setState(() {}),
                                    );
                              },
                            ).withPadding(Paddings.bottomLarge),
                          ).withPadding(Paddings.topLarger),
                        ],
                      ).withPadding(Paddings.bottomLarger),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: BannerAdWidget(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
