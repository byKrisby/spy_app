import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/cubit/timer_cubit.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/widgets/banner_ad_widget.dart';
import 'package:spy/widgets/custom_button.dart';
import 'package:spy/widgets/custom_scaffold.dart';

class EndGamePage extends StatelessWidget {
  const EndGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      altBackgroundColor: const Color.fromARGB(255, 119, 0, 0),
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'images/app_logo.png',
                  height: 250,
                ).withPadding(Paddings.topLarger),
                SizedBox(
                  width: 370,
                  height: 120,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'endGameText'.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ).withPadding(Paddings.medium),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 80,
                      child: CustomButton(
                        title: 'endGameYes'.tr(),
                        altTitle: Text(
                          'endGameYes'.tr(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2,
                          ),
                        ),
                        onPressed: () {
                          context.pushReplacement('/prep');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: 170,
                      child: CustomButton(
                        title: 'endGameNo'.tr(),
                        altTitle: Text(
                          'endGameNo'.tr(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2,
                          ),
                        ),
                        onPressed: () {
                          context.push('/timer', extra: context.read<TimerCubit>().state);
                        },
                      ),
                    ),
                  ],
                ).withPadding(Paddings.verticalLarge),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BannerAdWidget(),
          ),
        ],
      ),
    );
  }
}
