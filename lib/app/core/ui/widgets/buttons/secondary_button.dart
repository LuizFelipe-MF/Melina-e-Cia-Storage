import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final String? icon;

  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: context.colors.yellow),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.buttonText.copyWith(
                    color: context.colors.white,
                  ),
            ),
            Icon(
              context.icons.getIconByName(icon ?? ''),
              size: 24,
              color: context.colors.white,
            )
          ],
        ),
      ),
    );
  }
}
