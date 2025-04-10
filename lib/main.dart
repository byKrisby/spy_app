import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:spy/blocs/introduction_bloc.dart';
import 'package:spy/blocs/word/word_bloc.dart';
import 'package:spy/cubit/ad_cubit.dart';
import 'package:spy/cubit/category_cubit.dart';
import 'package:spy/cubit/player_amount_cubit.dart';
import 'package:spy/cubit/spy_amount_cubit.dart';
import 'package:spy/cubit/timer_cubit.dart';
import 'package:spy/cubit/word_cubit.dart';
import 'package:spy/get_it.dart';
import 'package:spy/routes/app_routes.dart';
import 'package:spy/word_database.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());

  await EasyLocalization.ensureInitialized();
  configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await WordDatabase().retrieveWords(database: 'wordsDE');
  await WordDatabase().retrieveWords(database: 'wordsEN');
  await WordDatabase().retrieveWords(database: 'wordsRU');
  await WordDatabase().retrieveWords(database: 'wordsUK');

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('de', 'DE'),
          Locale('ru', 'RU'),
          Locale('uk', 'UA'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('de', 'DE'),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayerAmountCubit>(
      create: (context) => PlayerAmountCubit(),
      child: BlocProvider<SpyAmountCubit>(
        create: (context) => SpyAmountCubit(),
        child: BlocProvider<TimerCubit>(
          create: (context) => TimerCubit(),
          child: BlocProvider<WordCubit>(
            create: (context) => WordCubit(),
            child: BlocProvider<WordBloc>(
              create: (context) => getIt<WordBloc>(),
              child: BlocProvider<CategoryCubit>(
                create: (context) => CategoryCubit(),
                child: BlocProvider<AdCubit>(
                  create: (context) => AdCubit(),
                  child: BlocProvider<IntroductionBloc>(
                    create: (context) => getIt<IntroductionBloc>()..add(IntroductionEvent.getIntroductionStatus()),
                    child: MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      theme: ThemeData(
                        fontFamily: 'Freeman',
                        textTheme: const TextTheme(
                          bodyMedium: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2,
                          ),
                        ),
                        colorScheme: ColorScheme.fromSeed(
                          seedColor: const Color.fromARGB(255, 10, 10, 10),
                          surface: const Color.fromARGB(255, 10, 10, 10),
                          primary: const Color.fromARGB(255, 10, 10, 10),
                        ),
                        useMaterial3: true,
                      ),
                      routerConfig: router,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
