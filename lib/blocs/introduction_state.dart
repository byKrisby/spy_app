part of 'introduction_bloc.dart';

@freezed
class IntroductionState with _$IntroductionState {
  const factory IntroductionState.initial() = _Initial;

  const factory IntroductionState.introductionVisible() = IntroductionVisible;

  const factory IntroductionState.introductionHidden() = IntroductionHidden;
}
