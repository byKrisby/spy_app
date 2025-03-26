import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:spy/cubit/word_cubit.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/add_word_dialog.dart';
import 'package:spy/widgets/custom_button.dart';

class WordBottomSheetContent extends StatefulWidget {
  const WordBottomSheetContent({required this.wordList, required this.category, super.key});

  final List<Word> wordList;

  final String category;

  @override
  State<WordBottomSheetContent> createState() => _WordBottomSheetContentState();
}

class _WordBottomSheetContentState extends State<WordBottomSheetContent> {
  @override
  Widget build(BuildContext context) {
    widget.wordList.sort(
      (a, b) => a.word!.compareTo(b.word!),
    );

    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView.builder(
            itemCount: widget.wordList.length,
            itemBuilder: (context, index) => Text(
              widget.wordList[index].word!,
              textAlign: TextAlign.center,
            ),
          ),
        ).withPadding(Paddings.verticalLarge),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomButton(
            title: 'addWord'.tr(),
            onPressed: () {
              showPlatformDialog(
                context: context,
                builder: (context) => AddWordDialog(category: widget.category),
              ).then(
                (value) => setState(() {
                  context.read<WordCubit>().getWords(context);
                }),
              );
            },
          ),
        ).withPadding(Paddings.bottomLarge)
      ],
    );
  }
}
