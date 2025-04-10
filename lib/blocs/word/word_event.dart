part of 'word_bloc.dart';

@freezed
sealed class WordEvent with _$WordEvent {
  const factory WordEvent.getWords({required String locale}) = GetWords;
}
