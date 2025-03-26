import 'package:flutter_bloc/flutter_bloc.dart';

class SpyAmountCubit extends Cubit<int> {
  SpyAmountCubit() : super(1);

  void changeAmount(int amount) => emit(amount);
}
