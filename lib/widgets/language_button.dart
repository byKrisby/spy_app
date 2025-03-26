import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({required this.newLocale, required this.title, super.key});

  final Locale newLocale;

  final String title;

  @override
  Widget build(BuildContext context) {
    return PlatformTextButton(
      child: Text(
        title,
        style: TextStyle(
          color: context.locale == newLocale ? Colors.white : Colors.grey,
        ),
      ),
      onPressed: () {
        context.setLocale(newLocale);
        context.pop();
      },
    );
  }
}
