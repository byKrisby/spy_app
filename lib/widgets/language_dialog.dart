import 'package:flutter/material.dart';
import 'package:spy/widgets/language_button.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      backgroundColor: Color.fromARGB(255, 10, 10, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LanguageButton(
            newLocale: Locale('en', 'US'),
            title: 'English',
          ),
          LanguageButton(
            newLocale: Locale('de', 'DE'),
            title: 'Deutsch',
          ),
        ],
      ),
    );
  }
}
