
import 'package:get/get.dart';

import '../controller/head_neck_controller.dart';

class HeadNeckBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut<HeadNeckController>(() => HeadNeckController(),);
  }

}