import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/word_database.dart';

class WordCubit extends Cubit<List<Word>> {
  WordCubit() : super([]);

  void getWords(BuildContext context) async {
    List<Word> wordList = [];
    if (context.mounted) {
      wordList = switch (context.locale.countryCode) {
        'RU' => await WordDatabase().retrieveWords(database: 'wordsRU'),
        'US' => await WordDatabase().retrieveWords(database: 'wordsEN'),
        'DE' => await WordDatabase().retrieveWords(database: 'wordsDE'),
        'UA' => await WordDatabase().retrieveWords(database: 'wordsUA'),
        _ => await WordDatabase().retrieveWords(database: 'wordsDE'),
      };
    }
    emit(wordList);
  }
}
