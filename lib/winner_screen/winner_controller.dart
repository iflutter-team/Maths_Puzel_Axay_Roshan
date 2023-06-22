import 'package:demo_math_puzzel/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:get/get.dart';

class WinnerPageController extends GetxController {
  AudioController audioController = Get.find();

  static int completeLevel = 1;

  winToPuzzel() {
    Get.off(
      () => const LevelScreen(),
    );
    PlayScreenController.number++;
    completeLevel++;
    audioController.win.stop();
    audioController.homePageSong;
    update(['level']);
  }

  winToNextLevel() {
    Get.off(
      () => const Playscreen(),
    );
    audioController.win.stop();
    audioController.start;
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

  winToMenu() {
    Get.off(
      () => const HomeScreen(),
    );
    completeLevel++;
    audioController.win.stop();
    audioController.homePageSong;
    update(['menu']);
  }
}
