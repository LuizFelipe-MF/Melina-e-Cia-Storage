import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF000000);
  Color get blue => const Color(0xFF214B8A);
  Color get blue50 => const Color(0xFFD8E0EC);
  Color get blue100 => const Color(0xFFB1BED1);
  Color get blue200 => const Color(0xFF889DBC);
  Color get blue300 => const Color(0xFF4A6C9E);
  Color get orange => const Color(0xFFF16617);
  Color get lightOrange => const Color(0xFFF9EBE4);

  Color get white => const Color(0XFFEEEEEE);

  Color get yellow => const Color(0XFFFFD700);
  Color get green => const Color(0XFF4BC050);
  Color get red => const Color(0XFFD61919);
  Color get lightBlue => const Color(0XFFC6D3E5);

  Color get black => const Color(0XFF100F15);
  Color get black25 => const Color(0XFF1E1E1E);
  Color get black50 => const Color(0XFF16151C);
  Color get black75 => const Color(0XFF374151);

  Color get gray => const Color(0XFF8C8C8C);
  Color get gray50 => const Color(0XFFDADADA);
  Color get gray100 => const Color(0XFFE5E5E5);
  Color get gray150 => const Color(0XFFEEEEEE);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
