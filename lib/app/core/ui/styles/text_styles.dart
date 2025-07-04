import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'epilogue';

  TextStyle get textLight => TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: font,
      );

  TextStyle get textRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: font,
      );

  TextStyle get textMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: font,
      );

  TextStyle get textBold => TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: font,
      );

  TextStyle get textButtonLabel => textMedium.copyWith(fontSize: 20);
}

extension TextStyleExtension on BuildContext {
  TextStyles get textStyle => TextStyles.i;
}
