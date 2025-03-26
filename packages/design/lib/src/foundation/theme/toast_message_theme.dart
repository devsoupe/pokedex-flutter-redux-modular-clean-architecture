import 'package:design/src/foundation/generated/tokens.g.dart';
import 'package:flutter/material.dart';

class AppToastMessageTheme extends ThemeExtension<AppToastMessageTheme> {
  AppToastMessageTheme({
    required this.backgroundColor,
    required this.titleColor,
    required this.bodyColor,
  });

  final margin = const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16);
  final padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
  final borderRadius = BorderRadius.circular(4);
  final showingDuration = const Duration(milliseconds: 3000);
  final Color backgroundColor;
  final Color titleColor;
  final Color bodyColor;

  @override
  ThemeExtension<AppToastMessageTheme> copyWith({
    Color? backgroundColor,
    Color? titleColor,
    Color? bodyColor,
  }) =>
      AppToastMessageTheme(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        titleColor: titleColor ?? this.titleColor,
        bodyColor: bodyColor ?? this.bodyColor,
      );

  @override
  ThemeExtension<AppToastMessageTheme> lerp(ThemeExtension<AppToastMessageTheme>? other, double t) =>
      other is! AppToastMessageTheme
          ? this
          : AppToastMessageTheme(
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
        titleColor: Color.lerp(titleColor, other.titleColor, t)!,
        bodyColor: Color.lerp(bodyColor, other.bodyColor, t)!,
      );

  static AppToastMessageTheme of(BuildContext context) {
    return AppToastMessageTheme(
      backgroundColor: context.tokens.color.colorsGrey10.withOpacity(0.9),
      titleColor: context.tokens.color.colorsGrey10,
      bodyColor: context.tokens.color.colorsGrey10,
    );
  }
}
