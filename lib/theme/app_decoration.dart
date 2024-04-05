import 'package:flutter/material.dart';
import 'package:apni_gaadi/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90003,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray500 => BoxDecoration(
        color: appTheme.gray500.withOpacity(0.5),
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray500,
      );
  static BoxDecoration get fillGray700 => BoxDecoration(
        color: appTheme.gray700,
      );
  static BoxDecoration get fillGray70001 => BoxDecoration(
        color: appTheme.gray70001,
      );
  static BoxDecoration get fillGray80001 => BoxDecoration(
        color: appTheme.gray80001,
      );
  static BoxDecoration get fillGray80002 => BoxDecoration(
        color: appTheme.gray80002,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );

  // Gradient decorations
  static BoxDecoration get gradientCyanToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan200,
            appTheme.blueGray90002,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.gray70002,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.only(
        topLeft: Radius.circular(20.h),
        topRight: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder52 => BorderRadius.circular(
        52.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
