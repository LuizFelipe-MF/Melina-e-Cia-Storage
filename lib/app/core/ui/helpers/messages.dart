import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        iconPositionLeft: double.infinity,
        message: message,
        textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: context.colors.white,
              fontSize: 14,
            ),
        backgroundColor: context.colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      displayDuration: const Duration(milliseconds: 1000),
    );
  }

  void showInfo(String message) {
    showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.info(
          iconPositionLeft: double.infinity,
          message: message,
          textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: context.colors.white,
                fontSize: 14,
              ),
          backgroundColor: context.colors.green,
          borderRadius: BorderRadius.circular(16),
        ),
        displayDuration: const Duration(milliseconds: 1000));
  }

  void showSuccess(String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(
        iconPositionLeft: double.infinity,
        message: message,
        textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: context.colors.white,
              fontSize: 14,
            ),
        backgroundColor: context.colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      displayDuration: const Duration(milliseconds: 1000),
    );
  }
}
