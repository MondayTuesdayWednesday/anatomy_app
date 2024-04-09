import 'package:anatomy/module/profile_module/languagesettings/controller/languagesettings_controller.dart';
import 'package:get/get.dart';

class LanguagesettingsBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => LanguagesettingsController());
  }

}