
import 'package:demo_math_puzzel/screens/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/screens/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/screens/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_screen.dart';
import 'package:get/get.dart';

class WinnerPageController extends GetxController {
  AudioController audioController = Get.find();

  static int completeLevel = 1;

  Future<void> winToPuzzel() async {
    Get.off(
      () => const LevelScreen(),
    );
    PlayScreenController.number++;
    completeLevel++;
    audioController.win.stop();
    await audioController.backGroundSound();
    update(['level']);
  }

  Future<void> winToNextLevel() async {
    Get.off(
      () => const Playscreen(),
    );
    audioController.win.stop();
    await audioController.startGame();
    completeLevel++;
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

  Future<void> winToMenu() async {
    Get.off(
      () => const HomeScreen(),
    );
    completeLevel++;
    audioController.win.stop();
    await audioController.backGroundSound();
    update(['menu']);
  }
}
