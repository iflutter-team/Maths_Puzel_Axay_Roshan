import 'package:demo_math_puzzel/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:get/get.dart';

class WinnerPageController extends GetxController {


  void winToPuzzel() {
    Get.to(
      () => const LevelScreen(),
    );
    update(['level']);
  }

  void winToMenu() {
    Get.to(
      () => const HomeScreen(),
    );
    update(['menu']);
  }
}
