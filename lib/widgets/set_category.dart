import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spy/cubit/category_cubit.dart';
import 'package:spy/cubit/word_cubit.dart';
import 'package:spy/isar/word.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';
import 'package:spy/word_database.dart';

class SetCategory extends StatelessWidget {
  const SetCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordCubit, List<Word>>(
      builder: (context, state) {
        Map<String, int> kategorienZaehler = WordDatabase.getCategories(state);

        return BlocBuilder<CategoryCubit, String>(
          builder: (context, categoryState) {
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
                      'categories'.tr(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ).withPadding(Paddings.bottomSmaller).withPadding(Paddings.leftLarge),
                    SizedBox(
                      width: 180,
                      height: 100,
                      child: CustomDropdown<String>(
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
                        hintText: 'categories'.tr(),
                        initialItem: 'all'.tr(),
                        items: _buildOptions(context, kategorienZaehler.keys.toList()),
                        onChanged: (String? value) {
                          context.read<CategoryCubit>().changeCategory(value ?? categoryState);
                        },
                      ).withPadding(Paddings.topMedium).withPadding(Paddings.rightLarge),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<String> _buildOptions(BuildContext context, List<String> categories) {
    categories.insert(0, 'all'.tr());

    return List.generate(
      categories.length,
      (index) => categories[index],
    );
  }
}
