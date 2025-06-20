// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  TextEditingController controller;
  String label;
  void Function(String) onChanged;

  Search({
    Key? key,
    required this.controller,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          prefixIcon:
              Icon(context.icons.getIconByName('magnifyingGlass'), size: 24),
          hintText: widget.label,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.colors.gray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: context.colors.gray,
            ),
          ),
          filled: true,
          fillColor: context.colors.gray50),
      controller: widget.controller,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
