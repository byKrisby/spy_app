import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/blocs/word/word_bloc.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:spy/widgets/word_bottom_sheet_content.dart';
import 'package:spy/word_database.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WordBloc>.value(
      value: context.read<WordBloc>()..add(GetWords(locale: context.locale.countryCode ?? 'EN')),
      child: BlocBuilder<WordBloc, WordState>(
        builder: (context, state) {
          return state.map(
            loaded: (value) {
              Map<String, int> kategorienZaehler = WordDatabase.getCategories(value.wordList);

              return CustomScaffold(
                onBack: () => context.pushReplacement('/'),
                hasAppBar: true,
                child: Stack(
                  children: [
                    GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 150,
                      ),
                      itemCount: kategorienZaehler.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 200,
                            child: CustomButton(
                              title: 'cards',
                              altTitle: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    kategorienZaehler.keys.elementAt(index),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    kategorienZaehler.values.elementAt(index).toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: const Color.fromARGB(255, 10, 10, 10),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return WordBottomSheetContent(
                                      wordList: value.wordList
                                          .where(
                                            (element) => element.category == kategorienZaehler.keys.elementAt(index),
                                          )
                                          .toList(),
                                      category: kategorienZaehler.keys.elementAt(index),
                                    );
                                  },
                                );
                              },
                            ).withPadding(Paddings.medium),
                          ),
                        ],
                      ),
                    ).withPadding(Paddings.topLarge),
                  ],
                ),
              );
            },
            initial: (value) => Container(),
          );
        },
      ),
    );
  }
}
