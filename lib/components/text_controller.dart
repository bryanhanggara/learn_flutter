import 'package:get/get.dart';

class TextController extends GetxController {
  var text = "".obs;

  void toUpper() {
    text.value = text.value.toUpperCase();
  }

  void toLower() {
    text.value = text.value.toLowerCase();
  }
}
