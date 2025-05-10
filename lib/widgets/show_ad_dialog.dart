import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

import 'custom_button.dart';

class ShowAdDialog extends StatelessWidget {
  const ShowAdDialog({required this.onYes, super.key});

  final Function() onYes;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.black)),
      backgroundColor: Color.fromARGB(255, 26, 39, 34),
      title: Text(
        'helpAdTitle'.tr(),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Text(
          'helpAdContent'.tr(),
          style: TextStyle(
            color: Colors.black,
          ),
        ).withPadding(Paddings.small),
      ),
      actions: [
        TextButton(
          child: Text(
            'noThanks'.tr(),
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => context.pop(),
        ),
        SizedBox(
          width: 150,
          child: CustomButton(
            title: 'yeahSure'.tr(),
            altTitle: Text(
              'yeahSure'.tr(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
            onPressed: () {
              onYes.call();
              context.pop();
            },
          ),
        ),
      ],
    );
  }
}
