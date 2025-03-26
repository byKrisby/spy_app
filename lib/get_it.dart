import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:spy/get_it.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
