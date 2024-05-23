import 'package:anatomy/module/home_module/regional_module/gastrointestinal/controller/gastrointestinal_controller.dart';
import 'package:get/get.dart';

class GastrointestinalBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GastrointestinalController>(() => GastrointestinalController(),);
  }

}