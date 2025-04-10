import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/word_database.dart';

part 'word_bloc.freezed.dart';
part 'word_event.dart';
part 'word_state.dart';

@injectable
class WordBloc extends Bloc<WordEvent, WordState> {
  WordBloc() : super(const WordState.initial()) {
    on<GetWords>(_onGetWords);
  }

  Future<void> _onGetWords(GetWords event, Emitter<WordState> emit) async {
    List<Word> wordList = [];
    wordList = switch (event.locale) {
      'DE' => await WordDatabase().retrieveWords(database: 'wordsDE'),
      'US' => await WordDatabase().retrieveWords(database: 'wordsEN'),
      'RU' => await WordDatabase().retrieveWords(database: 'wordsRU'),
      'UA' => await WordDatabase().retrieveWords(database: 'wordsUA'),
      _ => await WordDatabase().retrieveWords(database: 'wordsDE'),
    };
    emit(WordsLoaded(wordList: wordList));
  }
}
