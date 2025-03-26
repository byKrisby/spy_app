import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/word_database.dart';
import 'package:spy/word_database_en.dart';

class WordCubit extends Cubit<List<Word>> {
  WordCubit() : super([]);

  void getWords(BuildContext context) async {
    List<Word> wordList = [];
    if (context.mounted) {
      wordList = context.locale.countryCode == 'DE'
          ? await WordDatabase().retrieveWords()
          : await WordDatabaseEN().retrieveWordsEN();
    }
    emit(wordList);
  }
}
