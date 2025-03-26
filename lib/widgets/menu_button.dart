import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({required this.title, required this.clickPath, super.key});

  final String title;

  final String clickPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Colors.white,
            ),
          ),
        )),
        child: Text(title.tr()),
        onPressed: () {
          context.push(clickPath);
        },
      ).withPadding(Paddings.bottomLarge),
    );
  }
}
