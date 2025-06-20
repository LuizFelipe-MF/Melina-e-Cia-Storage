// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:flutter/material.dart';

class LoadingComponent extends StatefulWidget {
  double? size;
  Color? color;

  LoadingComponent({
    Key? key,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  State<LoadingComponent> createState() => _LoadingComponentState();
}

class _LoadingComponentState extends State<LoadingComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Icon(
        context.icons.getIconByName('spinner'),
        size: widget.size ?? 28,
        color: widget.color ?? Theme.of(context).textTheme.bodyLarge!.color,
      ),
    );
  }
}
