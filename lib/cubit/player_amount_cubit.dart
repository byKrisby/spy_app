import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerAmountCubit extends Cubit<int> {
  PlayerAmountCubit() : super(4);

  void changeAmount(int amount) => emit(amount);
}
