import 'package:melina/app/core/global/global_context.dart';
import 'package:melina/app/core/provider/aplication_binding.dart';
import 'package:melina/app/core/ui/theme/theme_config.dart';
import 'package:melina/app/pages/auth/auth_router.dart';
import 'package:melina/app/pages/home/home_router.dart';
import 'package:melina/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Melina extends StatefulWidget {
  const Melina({super.key});

  @override
  State<Melina> createState() => _MelinaState();
}

class _MelinaState extends State<Melina> {
  final _navKey = GlobalKey<NavigatorState>();

  _MelinaState() {
    GlobalContext.i.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return AplicationBinding(
      child: MaterialApp(
        theme: ThemeConfig.theme,
        debugShowCheckedModeBanner: false,
        title: 'Melina e Cia',
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => AuthRouter.page,
          '/home': (context) => HomeRouter.page,
        },
      ),
    );
  }
}
