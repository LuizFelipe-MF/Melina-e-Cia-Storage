import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoComponent extends StatelessWidget {
  final double? width;
  final bool simpleLogo;

  const LogoComponent({
    super.key,
    this.width,
    this.simpleLogo = false,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      simpleLogo ? 'assets/images/logo_1.svg' : 'assets/images/logo_2.svg',
      width: width,
      fit: BoxFit.cover,
    );
  }
}
