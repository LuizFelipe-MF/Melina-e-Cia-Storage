// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordInput extends StatefulWidget {
  TextEditingController controller;
  String? Function(String?)? validator;
  String label;
  String? hint;
  bool? isForgot = false;

  PasswordInput({
    Key? key,
    required this.controller,
    this.validator,
    required this.label,
    this.hint,
    this.isForgot,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  // ignore: prefer_typing_uninitialized_variables
  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: Theme.of(context).textTheme.content,
            ),
            widget.isForgot == true
                ? TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed('/login/forgotpassword'),
                    child: Text(
                      'Esqueceu sua senha?',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: context.colors.primary),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: _isObscured,
          controller: widget.controller,
          validator: widget.validator,
          style: Theme.of(context).textTheme.content,
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: Theme.of(context).textTheme.inputHint,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: _isObscured
                      ? Icon(
                          context.icons.getIconByName('eye'),
                          size: 24,
                        )
                      : Icon(context.icons.getIconByName('eyeClosed'),
                          size: 24),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              )),
        ),
      ],
    );
  }
}
