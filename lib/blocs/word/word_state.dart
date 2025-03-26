part of 'word_bloc.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.initial() = _Initial;
  const factory WordState.loaded({required List<Word> wordList}) = WordsLoaded;
}
