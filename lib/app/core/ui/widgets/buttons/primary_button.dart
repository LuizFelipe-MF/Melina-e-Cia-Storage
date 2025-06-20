// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:melina/app/core/ui/widgets/loading_component.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final String? icon;
  bool isLoading;

  PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: context.colors.primary),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.buttonText.copyWith(
                    color: context.colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            isLoading
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: LoadingComponent(
                      color: context.colors.white,
                      size: 16,
                    ),
                  )
                : icon != null
                    ? Icon(
                        context.icons.getIconByName(icon!),
                        size: 16,
                        color: context.colors.white,
                      )
                    : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
