import 'package:melina/app/core/ui/helpers/size_extensions.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:melina/app/core/ui/widgets/buttons/custom_button.dart';
import 'package:melina/app/core/ui/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GlobalContext {
  late final GlobalKey<NavigatorState> _navigatorKey;

  static GlobalContext? _instance;

  GlobalContext._();
  static GlobalContext get i {
    _instance ??= GlobalContext._();
    return _instance!;
  }

  set navigatorKey(GlobalKey<NavigatorState> key) => _navigatorKey = key;

  Future<void> isWithoutInternet() async {
    Navigator.of(_navigatorKey.currentState!.context).popAndPushNamed('/login');
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      context: _navigatorKey.currentState!.context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                context.icons.getIconByName('warning'),
                size: 64,
                color: context.colors.green,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Erro ao tentar conectar',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Desculpe, não foi possível carregar as informações. Verifique sua conexão e tente novamente em instantes.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Column(
            children: [
              const Spacer(),
              PrimaryButton(
                  label: 'Tentar Novamente',
                  icon: 'arrowUpRight',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              const SizedBox(
                height: 12,
              ),
              CustomButton(
                  label: 'Sair do Aplicativo',
                  width: context.screenHeight,
                  onPressed: () {
                    SystemNavigator.pop();
                  })
            ],
          )
        ]),
      ),
    );
  }
}
