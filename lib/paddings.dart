import 'package:flutter/material.dart';

class Paddings {
  // padding values
  static const double smallerValue = 3;
  static const double smallValue = 6;
  static const double mediumValue = 12;
  static const double largeValue = 24;
  static const double largerValue = 48;

  // padding
  static const EdgeInsets medium = EdgeInsets.all(mediumValue);
  static const EdgeInsets large = EdgeInsets.all(largeValue);
  static const EdgeInsets larger = EdgeInsets.all(largerValue);
  static const EdgeInsets small = EdgeInsets.all(smallValue);
  static const EdgeInsets smaller = EdgeInsets.all(smallerValue);

  // padding left
  static const EdgeInsets leftMedium = EdgeInsets.only(left: mediumValue);
  static const EdgeInsets leftLarge = EdgeInsets.only(left: largeValue);
  static const EdgeInsets leftLarger = EdgeInsets.only(left: largerValue);
  static const EdgeInsets leftSmall = EdgeInsets.only(left: smallValue);
  static const EdgeInsets leftSmaller = EdgeInsets.only(left: smallerValue);

  // padding right
  static const EdgeInsets rightMedium = EdgeInsets.only(right: mediumValue);
  static const EdgeInsets rightLarge = EdgeInsets.only(right: largeValue);
  static const EdgeInsets rightLarger = EdgeInsets.only(right: largerValue);
  static const EdgeInsets rightSmall = EdgeInsets.only(right: smallValue);
  static const EdgeInsets rightSmaller = EdgeInsets.only(right: smallerValue);

  // padding bottom
  static const EdgeInsets bottomMedium = EdgeInsets.only(bottom: mediumValue);
  static const EdgeInsets bottomLarge = EdgeInsets.only(bottom: largeValue);
  static const EdgeInsets bottomLarger = EdgeInsets.only(bottom: largerValue);
  static const EdgeInsets bottomSmall = EdgeInsets.only(bottom: smallValue);
  static const EdgeInsets bottomSmaller = EdgeInsets.only(bottom: smallerValue);

  // top padding
  static const EdgeInsets topMedium = EdgeInsets.only(top: mediumValue);
  static const EdgeInsets topLarge = EdgeInsets.only(top: largeValue);
  static const EdgeInsets topLarger = EdgeInsets.only(top: largerValue);
  static const EdgeInsets topSmall = EdgeInsets.only(top: smallValue);
  static const EdgeInsets topSmaller = EdgeInsets.only(top: smallerValue);

  // horizontal padding
  static const EdgeInsets horizontalMedium = EdgeInsets.symmetric(horizontal: mediumValue);
  static const EdgeInsets horizontalLarge = EdgeInsets.symmetric(horizontal: largeValue);
  static const EdgeInsets horizontalLarger = EdgeInsets.symmetric(horizontal: largerValue);
  static const EdgeInsets horizontalSmall = EdgeInsets.symmetric(horizontal: smallValue);
  static const EdgeInsets horizontalSmaller = EdgeInsets.symmetric(horizontal: smallerValue);

  // vertical padding
  static const EdgeInsets verticalMedium = EdgeInsets.symmetric(vertical: mediumValue);
  static const EdgeInsets verticalLarge = EdgeInsets.symmetric(vertical: largeValue);
  static const EdgeInsets verticalLarger = EdgeInsets.symmetric(vertical: largerValue);
  static const EdgeInsets verticalSmall = EdgeInsets.symmetric(vertical: smallValue);
  static const EdgeInsets verticalSmaller = EdgeInsets.symmetric(vertical: smallerValue);

  // clock-wise padding Left-Top-Right
  static const EdgeInsets lTRMedium = EdgeInsets.only(
    left: mediumValue,
    top: mediumValue,
    right: mediumValue,
  );
  static const EdgeInsets lTRLarge = EdgeInsets.only(
    left: largeValue,
    top: largeValue,
    right: largeValue,
  );
  static const EdgeInsets lTRLarger = EdgeInsets.only(
    left: largerValue,
    top: largerValue,
    right: largerValue,
  );
  static const EdgeInsets lTRSmall = EdgeInsets.only(
    left: smallValue,
    top: smallValue,
    right: smallValue,
  );
  static const EdgeInsets lTRSmaller = EdgeInsets.only(
    left: smallerValue,
    top: smallerValue,
    right: smallerValue,
  );

  // clock-wise padding Left-Right-Bottom
  static const EdgeInsets lRBMedium = EdgeInsets.only(
    left: mediumValue,
    right: mediumValue,
    bottom: mediumValue,
  );
  static const EdgeInsets lRBLarge = EdgeInsets.only(
    left: largeValue,
    right: largeValue,
    bottom: largeValue,
  );
  static const EdgeInsets lRBLarger = EdgeInsets.only(
    left: largerValue,
    right: largerValue,
    bottom: largerValue,
  );
  static const EdgeInsets lRBSmall = EdgeInsets.only(
    left: smallValue,
    right: smallValue,
    bottom: smallValue,
  );
  static const EdgeInsets lRBSmaller = EdgeInsets.only(
    left: smallerValue,
    right: smallerValue,
    bottom: smallerValue,
  );

  // Padding all but right
  static const EdgeInsets allButRightMedium = EdgeInsets.only(
    left: mediumValue,
    top: mediumValue,
    bottom: mediumValue,
  );
  static const EdgeInsets allButRightLarge = EdgeInsets.only(
    left: largeValue,
    top: largeValue,
    bottom: largeValue,
  );
  static const EdgeInsets allButRightLarger = EdgeInsets.only(
    left: largerValue,
    top: largerValue,
    bottom: largerValue,
  );
  static const EdgeInsets allButRightSmall = EdgeInsets.only(
    left: smallValue,
    top: smallValue,
    bottom: smallValue,
  );
  static const EdgeInsets allButRightSmaller = EdgeInsets.only(
    left: smallerValue,
    top: smallerValue,
    bottom: smallerValue,
  );

  // Padding all but left
  static const EdgeInsets allButLeftMedium = EdgeInsets.only(
    right: mediumValue,
    top: mediumValue,
    bottom: mediumValue,
  );
  static const EdgeInsets allButLeftLarge = EdgeInsets.only(
    right: largeValue,
    top: largeValue,
    bottom: largeValue,
  );
  static const EdgeInsets allButLeftLarger = EdgeInsets.only(
    right: largerValue,
    top: largerValue,
    bottom: largerValue,
  );
  static const EdgeInsets allButLeftSmall = EdgeInsets.only(
    right: smallValue,
    top: smallValue,
    bottom: smallValue,
  );
  static const EdgeInsets allButLeftSmaller = EdgeInsets.only(
    right: smallerValue,
    top: smallerValue,
    bottom: smallerValue,
  );
}
