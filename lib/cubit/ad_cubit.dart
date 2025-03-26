import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdCubit extends Cubit<BannerAd?> {
  AdCubit() : super(null);

  void changeAmount(BannerAd? ad) => emit(ad);
}
