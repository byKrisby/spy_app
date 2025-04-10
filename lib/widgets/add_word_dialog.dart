import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/word_database.dart';

class AddWordDialog extends StatefulWidget {
  const AddWordDialog({required this.category, super.key});

  final String category;

  @override
  State<AddWordDialog> createState() => _AddWordDialogState();
}

class _AddWordDialogState extends State<AddWordDialog> {
  final TextEditingController _wordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => context.pop(),
        ),
        Dialog(
          backgroundColor: const Color.fromARGB(255, 10, 10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 150,
                child: PlatformTextField(
                  maxLines: 1,
                  hintText: 'word'.tr(),
                  controller: _wordController,
                ),
              ).withPadding(Paddings.bottomMedium),
              CustomButton(
                title: 'save'.tr(),
                onPressed: () async {
                  if (_wordController.text.isNotEmpty && context.mounted) {
                    switch (context.locale.countryCode) {
                      case 'DE':
                        await WordDatabase().addWord(
                          database: 'wordsDE',
                          word: _wordController.text,
                          category: widget.category,
                        );
                      case 'US':
                        await WordDatabase().addWord(
                          database: 'wordsEN',
                          word: _wordController.text,
                          category: widget.category,
                        );
                      case 'RU':
                        await WordDatabase().addWord(
                          database: 'wordsRU',
                          word: _wordController.text,
                          category: widget.category,
                        );
                      case 'UA':
                        await WordDatabase().addWord(
                          database: 'wordsUA',
                          word: _wordController.text,
                          category: widget.category,
                        );
                    }
                    ;
                  }

                  if (context.mounted) {
                    context.pop();
                  }
                },
              ),
            ],
          ).withPadding(Paddings.verticalLarge),
        ),
      ],
    );
  }
}
