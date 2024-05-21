import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {

  TextEditingController emailController = TextEditingController();

  RxBool isContainerGrey = false.obs;

  void changeContainerColor( ) {
    isContainerGrey.value = emailController.text.isNotEmpty ;
  }
}

