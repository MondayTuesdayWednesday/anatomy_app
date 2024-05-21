import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CardDetailController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  bool areFieldsFilled() {
    return nameController.text.isNotEmpty &&
        cardController.text.isNotEmpty &&
        expiryController.text.isNotEmpty &&
        cvvController.text.isNotEmpty;
  }
}