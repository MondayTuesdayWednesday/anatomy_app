import 'package:anatomy/module/home_module/regional_module/respiratory/controller/respiratory_controller.dart';
import 'package:get/get.dart';

class RespiratoryBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<RespiratoryController>(() => RespiratoryController(),);
  }

}