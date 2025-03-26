import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/how_to_play_de_text.dart';
import 'package:spy/how_to_play_en_text.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class HowToPlayDialog extends StatelessWidget {
  const HowToPlayDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => context.pop(),
          ),
          Dialog(
            backgroundColor: const Color.fromARGB(255, 10, 10, 10),
            child: SizedBox(
              height: 600,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    context.locale.countryCode == 'DE' ? howToPlay : howToPlayEN,
                    PlatformTextButton(
                      child: Text(
                        'soundsGood'.tr(),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      onPressed: () => context.pop(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ).withPadding(Paddings.verticalLarger),
    );
  }
}
