import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {required this.child, this.altBackgroundColor, this.leading, this.hasAppBar = false, this.onBack, super.key});

  final bool hasAppBar;

  final Widget? leading;

  final Widget child;

  final void Function()? onBack;

  final Color? altBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PopScope(
        canPop: true,
        child: Scaffold(
          body: SafeArea(
            top: false,
            bottom: true,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: altBackgroundColor ?? const Color.fromARGB(255, 26, 39, 34).withValues(alpha: 0.7),
                    child: Image.asset(
                      'images/background.png',
                      fit: BoxFit.fitWidth,
                      opacity: const AlwaysStoppedAnimation(0.7),
                    ),
                  ),
                ),
                child,
                Align(
                  alignment: Alignment.topLeft,
                  child: hasAppBar
                      ? BackButton(
                          color: Colors.white,
                          onPressed: onBack ?? () => context.pop(),
                        )
                      : SizedBox.shrink(),
                ).withPadding(Paddings.topLarger + Paddings.leftLarge),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
