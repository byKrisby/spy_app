import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<int> {
  TimerCubit() : super(3);

  void changeAmount(int amount) => emit(amount);
}
