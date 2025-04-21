import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spy/cubit/timer_cubit.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

class SetTimer extends StatelessWidget {
  const SetTimer({required this.amount, super.key});

  final int amount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, int>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width - 80,
          height: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  ),
                ],
                border: Border.all(color: Colors.black, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'timerAmount'.tr(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ).withPadding(Paddings.bottomSmaller).withPadding(Paddings.leftLarge),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: CustomDropdown(
                    decoration: CustomDropdownDecoration(
                      expandedFillColor: Colors.white,
                      closedFillColor: Colors.white,
                      closedSuffixIcon: const Icon(
                        FontAwesomeIcons.arrowDown,
                        color: Colors.black,
                      ),
                      expandedBorder: Border.all(color: Colors.black, width: 1),
                      listItemStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      headerStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'timerAmount'.tr(),
                    initialItem: state,
                    items: _buildOptions(context, amount),
                    onChanged: (value) {
                      context.read<TimerCubit>().changeAmount(value ?? state);
                    },
                  ).withPadding(Paddings.topMedium).withPadding(Paddings.rightLarge),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<int> _buildOptions(BuildContext context, int amount) => List.generate(
        amount,
        (index) => index + 1,
      );
}
