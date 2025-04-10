import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/cubit/category_cubit.dart';
import 'package:spy/cubit/player_amount_cubit.dart';
import 'package:spy/cubit/spy_amount_cubit.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:spy/widgets/player_amount.dart';
import 'package:spy/widgets/set_category.dart';
import 'package:spy/widgets/set_timer.dart';
import 'package:spy/widgets/spy_amount.dart';
import 'package:spy/word_database.dart';

import '../paddings.dart';

class PreparationPage extends StatelessWidget {
  const PreparationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => context.pushReplacement('/'),
      child: CustomScaffold(
        onBack: () => context.pushReplacement('/'),
        hasAppBar: true,
        child: Stack(
          children: [
            BlocBuilder<CategoryCubit, String>(
              builder: (context, categoryState) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PlayerAmount(amount: 28).withPadding(Paddings.bottomMedium),
                      BlocBuilder<PlayerAmountCubit, int>(
                        builder: (context, state) {
                          return SpyAmount(amount: state ~/ 2);
                        },
                      ).withPadding(Paddings.bottomMedium),
                      const SetTimer(
                        amount: 10,
                      ).withPadding(Paddings.bottomMedium),
                      const SetCategory(),
                      SizedBox(
                        width: 300,
                        height: 80,
                        child: CustomButton(
                          title: 'start'.tr(),
                          onPressed: () async {
                            Word word = await _getWord(context, categoryState);
                            if (context.mounted) {
                              context.pushNamed(
                                'game',
                                extra: _getSpyList(context),
                                queryParameters: {'word': word.word},
                              );
                            }
                          },
                        ).withPadding(Paddings.bottomLarge),
                      ).withPadding(Paddings.topLarge),
                    ],
                  ),
                );
              },
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BannerAdWidget(),
            ),
          ],
        ),
      ),
    );
  }

  List<int> _getSpyList(BuildContext context) {
    List<int> playerList = List.generate(context.read<PlayerAmountCubit>().state, (index) => index);

    playerList.shuffle();

    return playerList.sublist(0, context.read<SpyAmountCubit>().state);
  }

  Future<Word> _getWord(BuildContext context, String? category) async {
    List<Word> wordList = [];
    if (context.mounted) {
      wordList = switch (context.locale.countryCode) {
        'DE' => await WordDatabase().retrieveWords(database: 'wordsDE', category: category),
        'US' => await WordDatabase().retrieveWords(database: 'wordsEN', category: category),
        'RU' => await WordDatabase().retrieveWords(database: 'wordsRU', category: category),
        'UA' => await WordDatabase().retrieveWords(database: 'wordsUA', category: category),
        _ => await WordDatabase().retrieveWords(database: 'wordsDE', category: category),
      };
    }
    return wordList[Random().nextInt(wordList.length - 1)];
  }
}
