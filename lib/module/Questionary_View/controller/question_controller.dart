import 'package:get/get.dart';
import '../../../common/app_assets.dart';
import '../question_done/questionary_done_view.dart';

class QuestionController extends GetxController {
  var topicIndex = 0.obs; // current topic index
  var selectedOption = ''.obs; // selected option
  var answeredCount = 0.obs;
  var isOptionSelected = false.obs; // Track if an option is selected

  // List of topics
  final List<String> topics = [
    'What are you studying?',
    'Tell us your interests',
    'When are you due to graduate?',
    'What are you studying?',
    'Tell us your interests',
    'When are you due to graduate?',
    // Add more topics as needed
  ];

  // List of options for each topic
  final List<List<String>> options = [
    ['Medicine', 'Physical therapy', 'Nursing', 'Dentistry'],
    ['Medicine2', 'Physical therapy', 'Nursing', 'Dentistry'],
    ['Medicine3', 'Physical therapy', 'Nursing', 'Dentistry'],
    ['Medicine4', 'Physical therapy', 'Nursing', 'Dentistry'],
    ['Medicine5', 'Physical therapy', 'Nursing', 'Dentistry'],
    ['Medicine6', 'Physical therapy', 'Nursing', 'Dentistry'],
    // Add more options lists as needed
  ];

  // List of background images
  final List<String> backgroundImages = [
    AppAssets.question1bg, AppAssets.question2bg, AppAssets.question3bg,
    AppAssets.question4bg, AppAssets.question5bg, AppAssets.question6bg,
    // Add more images as needed
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

      // Decrement answeredCount if it's greater than 0
      if (answeredCount.value > 0) {
        answeredCount.value--;
      }
    }
  }

  String formatAnsweredCount() {
    String count = answeredCount.value.toString().padLeft(2, '0') ;
    String total = topics.length.toString().padLeft(2, '0');
    return '$count  / $total';
  }

  void nextTopic() {
    if (isOptionSelected.value) {
      if (topicIndex.value < topics.length - 1) {
        topicIndex.value++ ;
        selectedOption.value = '';
        isOptionSelected.value = false;
        answeredCount.value++;
      } else {
        // Handle the end of the topics list
        // For example:
        Get.off(const QuestionDoneView());
      }
    }
  }

  double calculateProgress() {
    return (answeredCount.value) / topics.length;
  }
}
