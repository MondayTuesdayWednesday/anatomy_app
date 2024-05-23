import 'package:anatomy/module/home_module/regional_module/male_urogenital/controller/male_urogenital_controller.dart';
import 'package:get/get.dart';

class MaleUrogenitalBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => MaleUrogenitalController(),);
  }

}