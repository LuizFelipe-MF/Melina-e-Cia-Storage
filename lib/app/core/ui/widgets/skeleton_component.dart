// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SkeletonComponent extends StatelessWidget {
  double width;
  double height;

  SkeletonComponent({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.colors.gray50,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
