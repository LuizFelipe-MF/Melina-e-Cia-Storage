import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get title => titleLarge ?? const TextStyle();
  TextStyle get titleContent => titleMedium ?? const TextStyle();
  TextStyle get caption =>
      titleSmall?.copyWith(color: ColorsApp.i.gray) ?? const TextStyle();
  TextStyle get content => bodyLarge ?? const TextStyle();
  TextStyle get inputHint =>
      bodyLarge?.copyWith(color: ColorsApp.i.gray) ?? const TextStyle();
  TextStyle get info =>
      bodySmall?.copyWith(color: ColorsApp.i.gray) ?? const TextStyle();
  TextStyle get buttonText =>
      bodyLarge?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
}
