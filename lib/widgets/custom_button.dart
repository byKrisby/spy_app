import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.title, required this.onPressed, this.altTitle, super.key});

  final String title;

  final Widget? altTitle;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shadowColor: WidgetStateProperty.all(Colors.black),
        elevation: WidgetStateProperty.all(10),
        backgroundColor: WidgetStateProperty.all(Colors.white),
        splashFactory: NoSplash.splashFactory,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: altTitle ??
          Text(
            title.tr(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
    );
  }
}
