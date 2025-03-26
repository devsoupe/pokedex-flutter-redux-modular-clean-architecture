import 'package:design/src/foundation/generated/tokens.g.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme extends ThemeExtension<AppTextFieldTheme> {
  final Color cursorColor;
  final OutlineInputBorder border;
  late final OutlineInputBorder focusedBorder;
  late final OutlineInputBorder disabledBorder;
  late final OutlineInputBorder errorBorder;

  final EdgeInsets defalutContentPadding;
  final EdgeInsets noLabelContentPadding;

  AppTextFieldTheme({
    required this.cursorColor,
    required this.border,
    required this.focusedBorder,
    required this.disabledBorder,
    required this.errorBorder,
    required this.defalutContentPadding,
    required this.noLabelContentPadding,
  });

  @override
  ThemeExtension<AppTextFieldTheme> copyWith() => this;

  @override
  ThemeExtension<AppTextFieldTheme> lerp(ThemeExtension<AppTextFieldTheme>? other, double t) => this;

  static AppTextFieldTheme of(BuildContext context) {
    final tokens = context.tokens;
    return AppTextFieldTheme(
      cursorColor: tokens.color.colorsGrey10,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: tokens.color.colorsGrey10),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: tokens.color.colorsGrey10),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: tokens.color.colorsGrey10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: tokens.color.colorsGrey10),
      ),
      defalutContentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      noLabelContentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    );
  }
}
