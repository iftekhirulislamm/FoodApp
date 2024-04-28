import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink5001,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red10002,
      );
// Gradient decorations
  static BoxDecoration get gradientPrimaryContainerToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.37),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer,
            appTheme.pink100,
            appTheme.pink5001
          ],
        ),
      );
// Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(0.35),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          )
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA7007f,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder91 => BorderRadius.circular(
        91.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder39 => BorderRadius.circular(
        39.h,
      );
}
