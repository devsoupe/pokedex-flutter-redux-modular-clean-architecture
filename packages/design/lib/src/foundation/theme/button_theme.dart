import 'package:design/src/foundation/generated/tokens.g.dart';
import 'package:flutter/material.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  AppButtonTheme({
    required this.solidButtonColor,
    required this.solidButtonDisableColor,
    required this.lineButtonColor,
    required this.lineButtonDisableColor,
    required this.lineButtonBorderColor,
    required this.lineButtonDisableBorderColor,
    required this.lineButtonTextColor,
    required this.lineButtonDisableTextColor,
  });

  final BorderRadius borderRadius = BorderRadius.circular(8);

  final Color solidButtonColor;
  final Color solidButtonDisableColor;

  final Color lineButtonColor;
  final Color lineButtonDisableColor;
  final Color lineButtonBorderColor;
  final Color lineButtonDisableBorderColor;
  final Color lineButtonTextColor;
  final Color lineButtonDisableTextColor;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    Color? solidButtonColor,
    Color? solidButtonDisableColor,
    Color? lineButtonColor,
    Color? lineButtonDisableColor,
    Color? lineButtonBorderColor,
    Color? lineButtonDisableBorderColor,
    Color? lineButtonTextColor,
    Color? lineButtonDisableTextColor,
  }) {
    return AppButtonTheme(
      solidButtonColor: solidButtonColor ?? this.solidButtonColor,
      solidButtonDisableColor:
          solidButtonDisableColor ?? this.solidButtonDisableColor,
      lineButtonColor: lineButtonColor ?? this.lineButtonColor,
      lineButtonDisableColor:
          lineButtonDisableColor ?? this.lineButtonDisableColor,
      lineButtonBorderColor:
          lineButtonBorderColor ?? this.lineButtonBorderColor,
      lineButtonDisableBorderColor:
          lineButtonDisableBorderColor ?? this.lineButtonDisableBorderColor,
      lineButtonTextColor: lineButtonTextColor ?? this.lineButtonTextColor,
      lineButtonDisableTextColor:
          lineButtonDisableTextColor ?? this.lineButtonDisableTextColor,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(
    ThemeExtension<AppButtonTheme>? other,
    double t,
  ) {
    if (other is! AppButtonTheme) return this;
    return AppButtonTheme(
      solidButtonColor:
          Color.lerp(solidButtonColor, other.solidButtonColor, t)!,
      solidButtonDisableColor:
          Color.lerp(
            solidButtonDisableColor,
            other.solidButtonDisableColor,
            t,
          )!,
      lineButtonColor: Color.lerp(lineButtonColor, other.lineButtonColor, t)!,
      lineButtonDisableColor:
          Color.lerp(lineButtonDisableColor, other.lineButtonDisableColor, t)!,
      lineButtonBorderColor:
          Color.lerp(lineButtonBorderColor, other.lineButtonBorderColor, t)!,
      lineButtonDisableBorderColor:
          Color.lerp(
            lineButtonDisableBorderColor,
            other.lineButtonDisableBorderColor,
            t,
          )!,
      lineButtonTextColor:
          Color.lerp(lineButtonTextColor, other.lineButtonTextColor, t)!,
      lineButtonDisableTextColor:
          Color.lerp(
            lineButtonDisableTextColor,
            other.lineButtonDisableTextColor,
            t,
          )!,
    );
  }

  static AppButtonTheme of(BuildContext context) {
    final tokens = context.tokens.color;
    return AppButtonTheme(
      solidButtonColor: tokens.colorsPriamary10,
      solidButtonDisableColor: tokens.colorsPrimaryBackgroundDim,
      lineButtonColor: Colors.white,
      lineButtonDisableColor: tokens.colorsGrey10,
      lineButtonBorderColor: tokens.colorsGrey10,
      lineButtonDisableBorderColor: tokens.colorsGrey10,
      lineButtonTextColor: tokens.colorsGrey10,
      lineButtonDisableTextColor: tokens.colorsGrey10,
    );
  }
}
