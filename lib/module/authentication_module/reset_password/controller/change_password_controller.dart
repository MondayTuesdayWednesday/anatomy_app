

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController{

  RxBool isPasswordVisible = false.obs;
  RxBool isCodeVisible = false.obs;
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  toggleCodeVisibility() {
    isCodeVisible.value = !isCodeVisible.value;
  }

  RxBool isContainerGrey = false.obs;

  void changeContainerColor( ) {
    isContainerGrey.value = newPasswordController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }
}