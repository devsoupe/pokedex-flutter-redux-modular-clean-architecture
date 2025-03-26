import 'package:design/src/foundation/generated/tokens.g.dart';
import 'package:flutter/material.dart';

class AppDialogTheme extends ThemeExtension<AppDialogTheme> {
  AppDialogTheme({
    required this.barrierColor,
  });

  final Color barrierColor;
  final barrierDismissible = false;
  final margin = const EdgeInsets.symmetric(horizontal: 24);
  final padding = const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 36, bottom: 20);
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  @override
  ThemeExtension<AppDialogTheme> copyWith({
    Color? barrierColor,
  }) =>
      AppDialogTheme(barrierColor: barrierColor ?? this.barrierColor);

  @override
  ThemeExtension<AppDialogTheme> lerp(ThemeExtension<AppDialogTheme>? other, double t) =>
      other is! AppDialogTheme ? this : AppDialogTheme(barrierColor: Color.lerp(barrierColor, other.barrierColor, t)!);

  static AppDialogTheme of(BuildContext context) {
    return AppDialogTheme(barrierColor: context.tokens.color.colorsGrey10.withOpacity(.5));
  }
}
