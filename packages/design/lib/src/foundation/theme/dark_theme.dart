import 'package:flutter/material.dart';
import 'package:design/src/foundation/theme/app_theme.dart';
import 'package:design/src/foundation/theme/button_theme.dart';
import 'package:design/src/foundation/theme/dialog_theme.dart';
import 'package:design/src/foundation/theme/text_field_theme.dart';
import 'package:design/src/foundation/theme/toast_message_theme.dart';
import 'package:design/src/tokens/generated/tokens.g.dart';
import 'package:flutter/services.dart';

class DarkTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.dark;

  static ThemeData themeData(BuildContext context) {
    final tokens = context.tokens;

    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: tokens.color.colorsBlue30,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: tokens.color.colorsBlue30,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: tokens.textStyle.title1Title1B.copyWith(
          color: Colors.black,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      dividerTheme: DividerThemeData(
        color: tokens.color.colorsGrey10,
        thickness: 1,
        space: 1,
      ),
      tabBarTheme: TabBarTheme(
        indicator: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 4)),
        ),
        labelStyle: tokens.textStyle.title4Title4B,
        labelColor: tokens.color.colorsPriamary10,
        unselectedLabelStyle: tokens.textStyle.title4Title4EX,
        unselectedLabelColor: tokens.color.colorsGrey60,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: tokens.textStyle.caption1Caption1B,
        unselectedLabelStyle: tokens.textStyle.caption1Caption1B,
        selectedItemColor: tokens.color.colorsPriamary10,
        unselectedItemColor: tokens.color.colorsGrey10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
      extensions: [
        AppDialogTheme.of(context),
        AppButtonTheme.of(context),
        AppTextFieldTheme.of(context),
        AppToastMessageTheme.of(context),
      ],
    );
  }
}
