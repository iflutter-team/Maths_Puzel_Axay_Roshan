import 'package:demo_math_puzzel/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:get/get.dart';

class WinnerPageController extends GetxController {
  void winToPuzzel() {
    Get.off(
      () => const LevelScreen(),
    );
    update(['level']);
  }

  void winToNextLevel() async {
    Get.off(
      () => const Playscreen(),
    );

    update([
      'levelPlus',
      'level++',
      'puzzleImages',
      'valueText',
      'menu',
      'level',
      'submit'
    ]);
  }

  void winToMenu() {
    Get.off(
      () => const HomeScreen(),
    );
    update(['menu']);
  }
}
