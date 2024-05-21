import 'package:anatomy/module/home_module/head_nack/controller/head_neck_controller.dart';
import 'package:get/get.dart';

class HeadNeckBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut<HeadNeckController>(() => HeadNeckController(),);
  }

}