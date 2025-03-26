import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:spy/blocs/introduction_bloc.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: false,
        child: IntroductionScreen(
          globalBackgroundColor: const Color.fromARGB(255, 26, 39, 34).withValues(alpha: 0.7),
          done: Text('introductionDone'.tr(), style: TextStyle(color: Colors.white)),
          onDone: () => context.read<IntroductionBloc>().add(const IntroductionEvent.hideIntroduction()),
          showSkipButton: true,
          showDoneButton: true,
          skip: Text('introductionSkip'.tr(), style: TextStyle(color: Colors.white)),
          showNextButton: false,
          dotsFlex: 3,
          dotsDecorator: DotsDecorator(color: Colors.white, activeColor: Colors.red),
          pages: [
            PageViewModel(
              title: '',
              bodyWidget: Center(
                heightFactor: 2,
                child: Text(
                  'welcomeToSpy'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ).withPadding(Paddings.topLarge),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Center(
                  heightFactor: 2,
                  child: Text(
                    'introPage2'.tr(),
                    softWrap: true,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  )).withPadding(Paddings.topLarge),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.circleQuestion,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Column(
                children: [
                  Text(
                    'introPage3'.tr(),
                    softWrap: true,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'introPage3.1'.tr(),
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'introPage3.2'.tr(),
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.earListen,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Center(
                heightFactor: 1.5,
                child: Text(
                  'introPage4'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.lightbulb,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Center(
                heightFactor: 1.5,
                child: Text(
                  'introPage5'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.handPointUp,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.verticalLarger),
              bodyWidget: Center(
                heightFactor: 1,
                child: Text(
                  'introPage6'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.fingerprint,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Center(
                heightFactor: 2.5,
                child: Text(
                  'introPage7'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Icon(
                FontAwesomeIcons.clock,
                size: 150,
                color: Colors.grey,
              ).withPadding(Paddings.verticalLarge + Paddings.topLarger),
              bodyWidget: Center(
                heightFactor: 1.5,
                child: Text(
                  'introPage8'.tr(),
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
