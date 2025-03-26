import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/cubit/player_amount_cubit.dart';
import 'package:spy/cubit/timer_cubit.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/card_text.dart';
import 'package:spy/widgets/custom_scaffold.dart';
import 'package:swipable_stack/swipable_stack.dart';

class GamePage extends StatefulWidget {
  const GamePage({required this.spyList, this.word, super.key});

  final List<int> spyList;

  final String? word;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late final SwipableStackController _controller;
  late final FlipCardController _cardController;

  void _listenController() => setState(() {});
  bool canSwipe = false;

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
    _cardController = FlipCardController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    final playerAmount = context.read<PlayerAmountCubit>().state;

    return CustomScaffold(
      child: Stack(
        children: [
          AppinioSwiper(
            backgroundCardOffset: Offset.zero,
            threshold: 0.1,
            cardBuilder: (context, index) => Center(
              child: _buildPlayerCard(widget.spyList, index % playerAmount, index),
            ),
            onEnd: () => context.push('/timer', extra: context.read<TimerCubit>().state),
            cardCount: playerAmount,
            isDisabled: !canSwipe,
            loop: false,
            // backgroundCardOffset: Offset.zero,
            onSwipeEnd: (previousIndex, targetIndex, activity) {
              if (_cardController.state?.isFront == false) {
                _cardController.toggleCardWithoutAnimation();
              }
              canSwipe = false;
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BannerAdWidget(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerCard(List<int> spyList, int itemIndex, int playerIndex) {
    return Center(
      child: FlipCard(
        front: SizedBox(
          height: 500,
          width: 300,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(color: Colors.black, width: 2)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/tap_hand.png',
                    height: 150,
                  ),
                  Text('tapToBegin'.tr(), style: const TextStyle(fontSize: 15, color: Colors.black)),
                  SizedBox(
                    width: 200,
                    child: Text(
                      '${'player'.tr()}' ' ${playerIndex + 1}',
                      maxLines: 10,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        back: SizedBox(
          height: 500,
          width: 300,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(color: spyList.contains(itemIndex) ? Colors.red : Colors.green, width: 2)),
            child: CardText(
              itemIndex: itemIndex,
              spyList: spyList,
              word: widget.word!,
              playerIndex: playerIndex,
            ),
          ),
        ),
        flipOnTouch: !canSwipe,
        side: CardSide.FRONT,
        onFlipDone: (isFront) => setState(() {
          canSwipe = true;
        }),
        controller: _cardController,
      ),
    );
  }
}
