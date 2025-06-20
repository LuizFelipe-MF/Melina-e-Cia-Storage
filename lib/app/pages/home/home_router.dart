import 'package:melina/app/pages/home/home_controller.dart';
import 'package:melina/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => HomeController(
              context.read(),
            ),
          )
        ],
        builder: (context, child) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;

          return HomePage(
            user: args['user'],
          );
        },
      );
}
