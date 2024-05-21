

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/app_colors.dart';

void customSnackBar(
    {String? title,
      String? message,
      Color? colorText,
      Color? backgroundColor}) {
  Get.snackbar(
    duration: const Duration(seconds: 1),
    title ?? "",
    message ?? "",
    backgroundColor: backgroundColor,
    colorText: colorText ?? AppColors.whiteTextColor,
    snackPosition: SnackPosition.TOP,
    dismissDirection: DismissDirection.horizontal,
    isDismissible: true,
  );
}
