import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:spy/widgets/language_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: CustomScaffold(
        hasAppBar: true,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: CustomButton(
                      title: 'language'.tr(),
                      onPressed: () => showPlatformDialog(
                        context: context,
                        builder: (context) => const LanguageDialog(),
                      ),
                    ).withPadding(Paddings.bottomLarge),
                  ),
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: CustomButton(
                      title: 'legalNotice'.tr(),
                      onPressed: () => launchUrl(Uri.parse('https://krisbanko2.wordpress.com/impressum/')),
                    ).withPadding(Paddings.bottomLarge),
                  ),
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: CustomButton(
                      title: 'privacyPolicy'.tr(),
                      onPressed: () => launchUrl(Uri.parse('https://krisbanko2.wordpress.com/datenschutz/')),
                    ).withPadding(Paddings.bottomLarge),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'A party game app made by Krisby & PAD',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
