import 'package:get/get.dart';

class CoBottomAppBar extends GetxController {
  var page = 0.obs;

  ChPage(int page) {
    this.page.value = page;
  }
}
