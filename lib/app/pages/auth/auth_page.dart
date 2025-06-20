import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:melina/app/core/ui/base_state/base_state.dart';
import 'package:melina/app/core/ui/helpers/size_extensions.dart';
import 'package:melina/app/core/ui/widgets/buttons/custom_button.dart';
import 'package:melina/app/core/ui/widgets/buttons/primary_button.dart';
import 'package:melina/app/core/ui/widgets/inputs/input_text.dart';
import 'package:melina/app/core/ui/widgets/inputs/password_input.dart';
import 'package:melina/app/core/ui/widgets/logo_component.dart';
import 'package:melina/app/pages/auth/auth_controller.dart';
import 'package:melina/app/pages/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validatorless/validatorless.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends BaseState<AuthPage, AuthController> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();
  bool _isLoading = false;

  _showLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  _hideLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthController, AuthState>(
      listener: (context, state) => state.status.matchAny(
        any: () => _hideLoading(),
        loading: () => _showLoading(),
        error: () {
          _hideLoading();
          showError(state.errorMessage);
        },
        success: () {
          _hideLoading();
          Navigator.of(context).popAndPushNamed(
            '/home',
            arguments: {
              'user': state.user,
            },
          );
        },
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 70, 24, 32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogoComponent(
                    width: 34,
                    simpleLogo: true,
                  ),
                  Text(
                    'Bem Vindo!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Para acessar o sistema, insira\nseus dados de acesso.',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(
                    height: context.percentHeight(0.1),
                  ),
                  InputText(
                    controller: _emailEC,
                    label: 'E-mail',
                    hint: 'exemplo@gmail.com',
                    validator: Validatorless.multiple([
                      Validatorless.required('Email obrigatório!'),
                      Validatorless.email('Email inválido!'),
                    ]),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PasswordInput(
                    controller: _passwordEC,
                    label: 'Senha*',
                    hint: '************',
                    validator: Validatorless.required(
                      'Senha obrigatória!',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PrimaryButton(
                    label: 'Entrar com E-mail',
                    icon: 'arrowUpRight',
                    isLoading: _isLoading,
                    onPressed: () {
                      final valid = _formKey.currentState?.validate() ?? false;

                      if (valid) {
                        controller.clickLogin(
                          _emailEC.text,
                          _passwordEC.text,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
