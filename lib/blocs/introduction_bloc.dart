import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spy/services/shared_prefs.dart';

part 'introduction_bloc.freezed.dart';
part 'introduction_event.dart';
part 'introduction_state.dart';

@injectable
class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(const IntroductionState.initial()) {
    on<GetIntroductionStatus>(_onGetIntroductionStatus);
    on<HideIntroduction>(_onHideIntroduction);
    on<ShowIntroduction>(_onShowIntroduction);
  }

  Future<void> _onHideIntroduction(HideIntroduction event, Emitter<IntroductionState> emit) async {
    showIntroduction(false);
    emit(const IntroductionState.introductionHidden());
  }

  Future<void> _onShowIntroduction(ShowIntroduction event, Emitter<IntroductionState> emit) async {
    emit(const IntroductionState.introductionVisible());
  }

  Future<void> _onGetIntroductionStatus(GetIntroductionStatus event, Emitter<IntroductionState> emit) async {
    final bool showIntroduction = await getShowIntroduction();
    if (showIntroduction) {
      emit(const IntroductionState.initial());
    } else {
      emit(const IntroductionState.introductionHidden());
    }
  }
}
