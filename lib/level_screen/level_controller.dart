import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LevelController extends GetxController {
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
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    get();
  }

  void levelToPlayScreen() {
    Get.to(
      () => const Playscreen(),
    );
    update(['play']);
  }
}
