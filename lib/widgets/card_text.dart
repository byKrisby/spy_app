import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class CardText extends StatelessWidget {
  const CardText(
      {required this.spyList, required this.itemIndex, required this.word, required this.playerIndex, super.key});

  final List<int> spyList;
  final int itemIndex;
  final String word;
  final int playerIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              width: 200,
              child: Text(
                'gameCardYouAre'.tr(),
                maxLines: 10,
                softWrap: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ).withPadding(Paddings.bottomMedium),
            SizedBox(
              width: 200,
              child: Text(
                spyList.contains(itemIndex) ? 'spy'.tr() : 'citizen'.tr(),
                maxLines: 10,
                softWrap: true,
                style: TextStyle(fontSize: 25, color: spyList.contains(itemIndex) ? Colors.red : Colors.green),
              ),
            ).withPadding(Paddings.bottomMedium),
            if (!spyList.contains(itemIndex)) _buildWord(),
            if (spyList.contains(itemIndex)) _buildSpyDescription() else _buildCitizenDescription(),
            SizedBox(
              width: 200,
              child: Text(
                'gameCardSwipeAway'.tr(),
                maxLines: 10,
                softWrap: true,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ).withPadding(Paddings.topLarge),
        SizedBox(
          width: 200,
          child: Text(
            '${'player'.tr()}' ' ${playerIndex + 1}',
            maxLines: 10,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ).withPadding(Paddings.bottomLarge),
      ],
    );
  }

  Widget _buildWord() {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: Text(
            'gameCardWordIs'.tr(),
            maxLines: 10,
            softWrap: true,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ).withPadding(Paddings.bottomMedium),
        SizedBox(
          width: 200,
          child: Text(word,
              maxLines: 10,
              softWrap: true,
              style: TextStyle(fontSize: 25, color: spyList.contains(itemIndex) ? Colors.red : Colors.green)),
        ).withPadding(Paddings.bottomLarger),
      ],
    );
  }

  Widget _buildSpyDescription() {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: Text(
            'gameCardSpyDescription'.tr(),
            maxLines: 10,
            softWrap: true,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    ).withPadding(Paddings.topLarger);
  }

  Widget _buildCitizenDescription() {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: Text(
            'gameCardCitizenDescription'.tr(),
            maxLines: 10,
            softWrap: true,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
