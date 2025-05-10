import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class NewsDialog extends StatelessWidget {
  const NewsDialog({this.changelog, super.key});

  final List<String>? changelog;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      titlePadding: null,
      iconPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.black)),
      title: Text(
        'newsTitle'.tr(),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color.fromARGB(255, 26, 39, 34),
      actions: [
        Center(
          child: PlatformIconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => context.pop(),
          ),
        ),
      ],
      content: Column(
        children: changelog
                ?.map(
                  (e) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                    child: Text(
                      e,
                      style: TextStyle(color: Colors.black),
                    ).withPadding(Paddings.small),
                  ).withPadding(Paddings.bottomMedium),
                )
                .toList() ??
            [],
      ),
    );
  }
}
