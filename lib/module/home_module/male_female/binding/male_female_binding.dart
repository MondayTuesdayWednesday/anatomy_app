import 'package:anatomy/module/home_module/male_female/controller/male_female_controller.dart';
import 'package:get/get.dart';

class MaleFemaleBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MaleFemaleController());
  }

}