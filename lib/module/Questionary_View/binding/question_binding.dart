import 'package:get/get.dart';

import '../controller/question_controller.dart';

class QuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionController());
  }
}
