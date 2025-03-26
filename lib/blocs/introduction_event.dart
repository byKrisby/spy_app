part of 'introduction_bloc.dart';

@freezed
class IntroductionEvent with _$IntroductionEvent {
  const factory IntroductionEvent.hideIntroduction() = HideIntroduction;
  const factory IntroductionEvent.showIntroduction() = ShowIntroduction;
  const factory IntroductionEvent.getIntroductionStatus() = GetIntroductionStatus;
}
