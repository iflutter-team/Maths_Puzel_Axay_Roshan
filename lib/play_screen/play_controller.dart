import 'package:get/get.dart';

class PlayScreenController extends GetxController {
  String text = "";

  printValue(int t) {
    text = ("$text$t");
    update(['printValue']);
  }
}
