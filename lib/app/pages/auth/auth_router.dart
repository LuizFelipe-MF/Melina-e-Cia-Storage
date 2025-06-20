import 'package:melina/app/pages/auth/auth_controller.dart';
import 'package:melina/app/pages/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthRouter {
  AuthRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
              create: (context) => AuthController(
                    context.read(),
                  ))
        ],
        child: const AuthPage(),
      );
}
