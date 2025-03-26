import 'package:design/src/foundation/theme/button_theme.dart';
import 'package:design/src/foundation/theme/text_field_theme.dart';
import 'package:design/src/foundation/theme/toast_message_theme.dart'
    show AppToastMessageTheme;
import 'package:flutter/material.dart';

import 'dialog_theme.dart';

extension BuildContextExt on BuildContext {
  AppDialogTheme get dialogTheme => Theme.of(this).extension<AppDialogTheme>()!;

  AppToastMessageTheme get toastMessageTheme =>
      Theme.of(this).extension<AppToastMessageTheme>()!;

  AppButtonTheme get buttonTheme => Theme.of(this).extension<AppButtonTheme>()!;

  AppTextFieldTheme get textFieldTheme =>
      Theme.of(this).extension<AppTextFieldTheme>()!;
}
