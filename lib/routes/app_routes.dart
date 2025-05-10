import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/cubit/word_cubit.dart';
import 'package:spy/pages/card_page.dart';
import 'package:spy/pages/end_game_page.dart';
import 'package:spy/pages/game_page.dart';
import 'package:spy/pages/homepage.dart';
import 'package:spy/pages/preparation_page.dart';
import 'package:spy/pages/settings_page.dart';
import 'package:spy/widgets/game_timer.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionsBuilder: (_, __, ___, child) => child,
        child: const Homepage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
      routes: <RouteBase>[
        GoRoute(
          path: 'settings',
          name: 'settings',
          builder: (BuildContext context, GoRouterState state) => const SettingsPage(),
          //pageBuilder: (context, state) => SettingsPage(),
        ),
        GoRoute(
          path: 'prep',
          name: 'prep',
          builder: (BuildContext context, GoRouterState state) => PreparationPage(),
        ),
        GoRoute(
          path: 'game',
          name: 'game',
          builder: (BuildContext context, GoRouterState state) => GamePage(
            spyList: state.extra as List<int>,
            word: state.uri.queryParameters['word'],
          ),
          pageBuilder: (context, state) => CustomTransitionPage(
            transitionsBuilder: (_, __, ___, child) => child,
            child: GamePage(
              spyList: state.extra as List<int>,
              word: state.uri.queryParameters['word'],
            ),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        ),
        GoRoute(
          path: 'timer',
          name: 'timer',
          builder: (BuildContext context, GoRouterState state) => GameTimer(
            duration: state.extra as int,
          ),
          pageBuilder: (context, state) => CustomTransitionPage(
            transitionsBuilder: (_, __, ___, child) => child,
            child: GameTimer(
              duration: state.extra as int,
            ),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        ),
        GoRoute(
          path: 'cards',
          name: 'cards',
          builder: (BuildContext context, GoRouterState state) => BlocProvider<WordCubit>(
            create: (context) => WordCubit(),
            child: CardPage(),
          ),
        ),
        GoRoute(
          path: 'endgame',
          name: 'endgame',
          builder: (BuildContext context, GoRouterState state) => const EndGamePage(),
          pageBuilder: (context, state) => CustomTransitionPage(
            transitionsBuilder: (_, __, ___, child) => child,
            child: const EndGamePage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        ),
      ],
    ),
  ],
);
