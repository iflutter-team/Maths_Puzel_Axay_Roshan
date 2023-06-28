import 'package:demo_math_puzzel/screens/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LevelController extends GetxController {
  AudioController audioController = Get.find();
  SharedPreferences? puzzleGame;
  static int gameLevel = 0;

  static List<String> wList = List.filled(75, "pending");
  static List<String> sList = List.filled(75, "pending");
  bool lod = true;

  get() async {
    puzzleGame = await SharedPreferences.getInstance();
<<<<<<< Updated upstream
    level2 = puzzleGame!.getInt("level") ?? 0;
    print("level=$level2");
    for (int i = 0; i < level2; i++) {
=======
    gameLevel = puzzleGame!.getInt("level") ?? 0;
    print("level=$gameLevel");
    for (int i = 0; i < gameLevel; i++) {
>>>>>>> Stashed changes
      String? win = puzzleGame!.getString("win$i") ?? "pending";
      String? skip = puzzleGame!.getString("skip$i") ?? "pending";
      print("level=$i\twin=$win\tskip=$skip");
      wList[i] = win;
      sList[i] = skip;
    }
    lod = true;

    update(['GetFunction']);
  }

  @override
  void onInit() {
    GetBuilder<LevelController>(
      id: 'GetFunction',
      builder: (controller) => get(),
    );
    super.onInit();
  }

  Future<void> levelToPlayScreen() async {
    Get.to(
<<<<<<< Updated upstream
      () => Playscreen(),
=======
      () => Playscreen(), //key: index
>>>>>>> Stashed changes
    );
    update(['play']);
    await audioController.startGame();
  }
}
