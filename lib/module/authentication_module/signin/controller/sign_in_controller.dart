import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isPasswordVisible = false.obs;
  RxBool isChecked2 = false.obs;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  IconData getVisibilityIcon() {
    return isPasswordVisible.value ? Icons.visibility_off : Icons.visibility;
  }
}
