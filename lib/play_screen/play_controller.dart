import 'package:demo_math_puzzel/data_screen/data_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_page.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayScreenController extends GetxController {
  String? text = "";
  String val = '';
  static late int index;

  printValue(int t) {
    text = ("$text$t");
  }

  void numberTap(int value) {
    val = val + value.toString();
    update(['valueText']);
  }

  int level1 = 0;
  bool ad = false;

  // final controller = ConfettiController();
  // bool isPlaying = false;
  SharedPreferences? puzzleGame;

  get() async {
    puzzleGame = await SharedPreferences.getInstance();
    level1 = puzzleGame!.getInt("level") ?? 0;
  }

  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  void initState() {
    get();
    // controller.play();
    // ConfettiWidget(
    //   confettiController: controller,
    //   shouldLoop: true,
    // );
  }

  nextLevelFunction() async {
    await puzzleGame!.setString("win${PlayScreenController.index}", "no");
    await puzzleGame!.setString("skip${PlayScreenController.index}", "yes");
    PlayScreenController.index++;

    PlayScreenController.index > level1
        ? puzzleGame!.setInt("level", PlayScreenController.index)
        : null;
    level1 = puzzleGame!.getInt("level") ?? 0;
    print(">>>>>>>>>>ok>>>>$level1");
    update(['nextLevel']);
  }

  removeButton() {
    print("remove Value");
    if (text!.isNotEmpty) {
      text = text!.substring(0, text!.length - 1);
    }
    update(["remove"]);
  }

  submitButton() async {
    if (text == DataPage.anse[PlayScreenController.index]) {
      await puzzleGame!.setString("win${PlayScreenController.index}", "yes");
      await puzzleGame!.setString("skip${PlayScreenController.index}", "no");
      PlayScreenController.index++;
      PlayScreenController.index > level1
          ? puzzleGame!.setInt("level", PlayScreenController.index)
          : null;
      level1 = puzzleGame!.getInt("level") ?? 0;
      print(">>>>>>>>>>ok>>>>$level1");
      await puzzleGame!.setInt("level", PlayScreenController.index);

      Get.off(() => const WinPage());
    }
    update(['submit']);
  }
}
