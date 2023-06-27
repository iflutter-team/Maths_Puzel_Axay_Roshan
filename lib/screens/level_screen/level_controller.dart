import 'package:demo_math_puzzel/screens/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LevelController extends GetxController {
  AudioController audioController = Get.find();
  SharedPreferences? puzzleGame;
  static int level2 = 0;

  static List<String> wList = List.filled(75, "pending");
  static List<String> sList = List.filled(75, "pending");
  bool lod = true;

  get() async {
    puzzleGame = await SharedPreferences.getInstance();
    level2 = puzzleGame!.getInt("level") ?? 0;
    print("level=$level2");
    for (int i = 0; i < level2; i++) {
      String? win = puzzleGame!.getString("win$i") ?? "pending";
      String? skip = puzzleGame!.getString("skip$i") ?? "pending";
      print("level=$i\twin=$win\tskip=$skip");
      wList[i] = win;
      sList[i] = skip;
    }
    lod = true;

    print(wList);
    print(sList);
    update(['GetFunction']);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    GetBuilder<LevelController>(
      id: 'GetFunction',
      builder: (controller) => get(),
    );
  }

  Future<void> levelToPlayScreen() async {
    Get.to(
      () => Playscreen(),
    );
    update(['play']);
    await audioController.startGame();
  }
}
