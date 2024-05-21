import 'package:anatomy/module/home_module/abdomen/controller/abdomen_controller.dart';
import 'package:get/get.dart';

class AbdomenBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AbdomenController>(() => AbdomenController(),);
  }

}