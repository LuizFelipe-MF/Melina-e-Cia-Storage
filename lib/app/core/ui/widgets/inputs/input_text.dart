// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class InputText extends StatelessWidget {
  TextEditingController controller;
  String? Function(String?)? validator;
  String label;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormaters;
  String? hint;

  InputText({
    Key? key,
    required this.controller,
    required this.label,
    this.validator,
    this.keyboardType,
    this.inputFormaters,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.content,
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.inputHint,
          ),
          inputFormatters: inputFormaters,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          style: Theme.of(context).textTheme.content,
        ),
      ],
    );
  }
}
