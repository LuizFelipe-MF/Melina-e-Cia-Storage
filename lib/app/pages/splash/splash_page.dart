import 'package:melina/app/core/ui/helpers/size_extensions.dart';
import 'package:melina/app/core/ui/widgets/logo_component.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  navigate() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).popAndPushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    navigate();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: LogoComponent(
          width: context.percentWidth(0.3),
          simpleLogo: false,
        )));
  }
}
