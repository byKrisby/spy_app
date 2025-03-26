import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spy/blocs/introduction_bloc.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildLanguageButtons(context),
        ),
      ),
    );
  }

  List<Widget> _buildLanguageButtons(BuildContext context) {
    return context.supportedLocales
        .map(
          (locale) => CustomButton(
            title: getTitle(locale.languageCode),
            onPressed: () {
              context.setLocale(locale);
              context.read<IntroductionBloc>().add(const IntroductionEvent.showIntroduction());
            },
          ).withPadding(Paddings.bottomMedium),
        )
        .toList();
  }

  String getTitle(String languageCode) {
    if (languageCode == 'de') {
      return 'Deutsch';
    } else if (languageCode == 'en') {
      return 'English';
    } else {
      return 'German';
    }
  }
}
