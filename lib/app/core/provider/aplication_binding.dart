import 'package:melina/app/core/rest_client/custom_dio.dart';
import 'package:melina/app/repositories/auth/auth_repository.dart';
import 'package:melina/app/repositories/auth/auth_repository_impl.dart';
import 'package:melina/app/repositories/home/home_repository.dart';
import 'package:melina/app/repositories/home/home_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AplicationBinding extends StatelessWidget {
  final Widget child;

  const AplicationBinding({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustomDio(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            dio: context.read(),
          ),
        ),
        Provider<HomeRepository>(
          create: (context) => HomeRepositoryImpl(
            dio: context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
