import 'package:melina/app/core/ui/styles/app_styles.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: ColorsApp.i.gray50,
      width: 2,
    ),
  );

  static final _focusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: ColorsApp.i.primary,
      width: 2,
    ),
  );

  static final theme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorsApp.i.white,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.i.buttonStyle.copyWith(
        side: WidgetStatePropertyAll(
          BorderSide(color: ColorsApp.i.gray50),
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: ColorsApp.i.gray50,
          width: 2,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _focusedInputBorder,
      labelStyle: TextStyle(
        color: ColorsApp.i.black25,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      constraints: const BoxConstraints.expand(),
      dragHandleColor: ColorsApp.i.black75,
      dragHandleSize: const Size(134, 5),
      showDragHandle: true,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorsApp.i.green,
      linearMinHeight: 2,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: ColorsApp.i.blue100,
      elevation: 0,
      backgroundColor: ColorsApp.i.white,
      height: 64,
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          color: ColorsApp.i.black25,
          fontWeight: FontWeight.normal,
          fontFamily: 'epilogue',
        ),
      ),
    ),
  );

  static final textTheme = TextTheme(
    titleLarge: TextStyles.i.textMedium
        .copyWith(fontSize: 24, color: ColorsApp.i.black25),
    titleMedium: TextStyles.i.textRegular
        .copyWith(fontSize: 20, color: ColorsApp.i.black25),
    titleSmall: TextStyles.i.textRegular
        .copyWith(fontSize: 18, color: ColorsApp.i.black25),
    bodyLarge: TextStyles.i.textRegular
        .copyWith(fontSize: 16, color: ColorsApp.i.black25),
    bodyMedium: TextStyles.i.textRegular
        .copyWith(fontSize: 14, color: ColorsApp.i.black25),
    bodySmall: TextStyles.i.textRegular
        .copyWith(fontSize: 12, color: ColorsApp.i.black25),
  );
}
