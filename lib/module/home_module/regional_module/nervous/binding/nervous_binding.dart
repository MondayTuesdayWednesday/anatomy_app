import 'package:anatomy/module/home_module/regional_module/nervous/controller/nervous_controller.dart';
import 'package:get/get.dart';

class NervousBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NervousController(),);
  }

}