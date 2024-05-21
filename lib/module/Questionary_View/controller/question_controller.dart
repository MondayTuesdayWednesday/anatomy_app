import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../question_done/questionary_done_view.dart';
class QuestionController extends GetxController {
  var topicIndex = 0.obs;
  var selectedOption = ''.obs;
  var answeredCount = 0.obs;
  var isOptionSelected = false.obs;
  final List<String> topics = [
    'What are you studying?',
    'Tell us your interests',
    'When are you due to graduate?',
    'What are you studying?',
    'Tell us your interests',
    'When are you due to graduate?',
  ];
  List<GridItem> options = [
    GridItem(answer: 'Nursing', imagePath: 'assets/icons/healthicons_nurse.svg'),
    GridItem(answer: 'Medicine', imagePath: 'assets/icons/kapcool.svg'),
    GridItem(answer: 'Physical therapy', imagePath: 'assets/icons/mans.svg'),
    GridItem(answer: 'Dentistry', imagePath: 'assets/icons/teeth.svg')
  ];

  void selectOption(String option) {
    selectedOption.value = option;
    isOptionSelected.value = true;
  }

  void goToPreviousTopic() {
    if (topicIndex.value > 0) {
      topicIndex.value--;
      selectedOption.value = '';
      isOptionSelected.value = false;
      if (answeredCount.value > 0) {
        answeredCount.value--;
      }
    }
  }

  void nextTopic() {
    if (isOptionSelected.value) {
      if (topicIndex.value < topics.length - 1) {
        topicIndex.value++;
        selectedOption.value = '';
        isOptionSelected.value = false;
        answeredCount.value++;
      } else {
        Get.off(const QuestionDoneView());
      }
    } else {
      Get.snackbar(
        'No Option Selected',
        'Please select your answer',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.transparent,
        colorText: Colors.white,
      );
    }
  }

  double calculateProgress() {
    return (answeredCount.value) / topics.length;
  }
}

class GridItem {
  final String answer;
  final String imagePath;

  GridItem({required this.answer, required this.imagePath});
}
