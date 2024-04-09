import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangepasswordController extends GetxController{
  var obscureText = true.obs;
  var newText = true.obs;
  var confirmText = true.obs;
  TextEditingController oldPasswordController=TextEditingController();
  TextEditingController newPasswordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  @override
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }
  void toggleNewText() {
    newText.value = !newText.value;
  }
  void toggleFirmText(){
    confirmText.value = !confirmText.value;
  }
}
