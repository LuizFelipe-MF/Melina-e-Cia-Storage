// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:melina/app/core/ui/base_state/base_state.dart';
import 'package:melina/app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:melina/app/models/auth_model.dart';

class HomePage extends StatefulWidget {
  User user;

  HomePage({
    super.key,
    required this.user,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
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
    return Scaffold();
  }
}
