import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isPasswordVisible = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  IconData getVisibilityIcon() {
    return isPasswordVisible.value ? Icons.visibility_off : Icons.visibility;
  }
}
