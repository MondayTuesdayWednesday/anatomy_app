import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:anatomy/module/authentication_module/widgets/done_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetSuccessFullyPage extends StatelessWidget {
  const ResetSuccessFullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DoneView(titleText: "Password successfully reset!",
        subTitle: '',
        descriptionText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
        buttonText: "Login to my account" ,
        onPressed: (){
      Get.off(const SignInPage() ,binding:  SignInBinding());
        }
    );
  }
}
