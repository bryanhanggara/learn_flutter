import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    var selectedIndex;
    selectedIndex.value = index;
  }

  changePage(int index) {}
}
