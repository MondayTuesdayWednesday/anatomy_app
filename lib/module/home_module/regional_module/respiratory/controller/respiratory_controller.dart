import 'package:get/get.dart';

class RespiratoryController extends GetxController{
  RxBool isIconVisible = false.obs;

  void toggleIconVisibility() {
    isIconVisible.value = !isIconVisible.value;
  }


  RxBool isContainerVisible = false.obs;

  void toggleContainerVisibility() {
    isContainerVisible.value = !isContainerVisible.value;
  }

  var listContainer = 0.obs;
}