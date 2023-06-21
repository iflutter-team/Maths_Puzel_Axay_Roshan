import 'package:demo_math_puzzel/data_screen/data_screen.dart';
import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:demo_math_puzzel/winner_screen/winner_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayScreenController extends GetxController {
  String val = '';
  static late int index;

  void numberTap(int value) {
    val = val + value.toString();
    update(['valueText']);
  }

  int number = 1;

  int level1 = 0;
  bool ad = false;

  // final controller = ConfettiController();
  // bool isPlaying = false;
  SharedPreferences? puzzleGame;

  get() async {
    puzzleGame = await SharedPreferences.getInstance();
    level1 = puzzleGame!.getInt("level") ?? 0;
  }

  void initState() {
    get();
  }

  nextLevelFunction() async {
    // await puzzleGame!.setString("win${PlayScreenController.index}", "no");
    // await puzzleGame!.setString("skip${PlayScreenController.index}", "yes");
    // PlayScreenController.index++;
    //
    // PlayScreenController.index > level1
    //     ? puzzleGame!.setInt("level", PlayScreenController.index)
    //     : null;
    // level1 = puzzleGame!.getInt("level") ?? 0;
    if (imageIndex < tableImages.length - 1) {
      imageIndex++;
      number++;
    }
    print(">>>>>>$level1");
    update(['nextLevel']);
  }

  removeButton() {
    print("remove Value");
    if (val.isNotEmpty) {
      val = val.substring(0, val.length - 1);
    }
    update(["valueText"]);
  }

  // submitButton() async {
  //   if (val == PlayScreenController.answer[PlayScreenController.index]) {
  //     print('Submit Button');
  //     await puzzleGame!.setString("win${PlayScreenController.index}", "yes");
  //     await puzzleGame!.setString("skip${PlayScreenController.index}", "no");
  //     PlayScreenController.index++;
  //     PlayScreenController.index > level1
  //         ? puzzleGame!.setInt("level", PlayScreenController.index)
  //         : null;
  //     level1 = puzzleGame!.getInt("level") ?? 0;
  //     print(">>>>>>>>$level1");
  //     await puzzleGame!.setInt("level", PlayScreenController.index);
  //     number++;
  //     Get.off(() => const WinPage());
  //   }
  //   update(['submit']);
  // }

  static int imageIndex = 0;

  static List<String> tableImages = [
    AssertRes.puzzel1Image,
    AssertRes.puzzel2Image,
    AssertRes.puzzel3Image,
    AssertRes.puzzel4Image,
    AssertRes.puzzel5Image,
    AssertRes.puzzel6Image,
    AssertRes.puzzel7Image,
    AssertRes.puzzel8Image,
    AssertRes.puzzel9Image,
    AssertRes.puzzel11Image,
    AssertRes.puzzel12Image,
    AssertRes.puzzel13Image,
    AssertRes.puzzel14Image,
    AssertRes.puzzel15Image,
    AssertRes.puzzel16Image,
    AssertRes.puzzel17Image,
    AssertRes.puzzel18Image,
    AssertRes.puzzel19Image,
    AssertRes.puzzel20Image,
    AssertRes.puzzel21Image,
    AssertRes.puzzel22Image,
    AssertRes.puzzel23Image,
    AssertRes.puzzel24Image,
    AssertRes.puzzel25Image,
    AssertRes.puzzel26Image,
    AssertRes.puzzel27Image,
    AssertRes.puzzel28Image,
    AssertRes.puzzel29Image,
    AssertRes.puzzel30Image,
    AssertRes.puzzel31Image,
    AssertRes.puzzel32Image,
    AssertRes.puzzel33Image,
    AssertRes.puzzel34Image,
    AssertRes.puzzel35Image,
    AssertRes.puzzel36Image,
    AssertRes.puzzel37Image,
    AssertRes.puzzel38Image,
    AssertRes.puzzel39Image,
    AssertRes.puzzel40Image,
    AssertRes.puzzel41Image,
    AssertRes.puzzel42Image,
    AssertRes.puzzel43Image,
    AssertRes.puzzel44Image,
    AssertRes.puzzel45Image,
    AssertRes.puzzel46Image,
    AssertRes.puzzel47Image,
    AssertRes.puzzel48Image,
    AssertRes.puzzel49Image,
    AssertRes.puzzel50Image,
    AssertRes.puzzel51Image,
    AssertRes.puzzel52Image,
    AssertRes.puzzel53Image,
    AssertRes.puzzel54Image,
    AssertRes.puzzel55Image,
    AssertRes.puzzel56Image,
    AssertRes.puzzel57Image,
    AssertRes.puzzel58Image,
    AssertRes.puzzel59Image,
    AssertRes.puzzel60Image,
    AssertRes.puzzel61Image,
    AssertRes.puzzel62Image,
    AssertRes.puzzel63Image,
    AssertRes.puzzel64Image,
    AssertRes.puzzel65Image,
    AssertRes.puzzel66Image,
    AssertRes.puzzel67Image,
    AssertRes.puzzel68Image,
    AssertRes.puzzel69Image,
    AssertRes.puzzel70Image,
    AssertRes.puzzel71Image,
    AssertRes.puzzel72Image,
    AssertRes.puzzel73Image,
    AssertRes.puzzel74Image,
    AssertRes.puzzel75Image,
  ];

  static List<String> answer = [
    "10",
    /*1*/
    "25",
    /*2*/
    "6",
    /*3*/
    "14",
    /*4*/
    "128",
    /*5*/
    "7",
    /*6*/
    "50",
    /*7*/
    "1025",
    /*8*/
    "100",
    /*9*/
    "3",
    /*10*/
    "212",
    /*11*/
    "3011",
    /*12*/
    "14",
    /*13*/
    "16",
    /*14*/
    "1",
    /*15*/
    "2",
    /*16*/
    "44",
    /*17*/
    "45",
    /*18*/
    "625",
    /*19*/
    "1",
    /*20*/
    "13",
    /*21*/
    "47",
    /*22*/
    "50",
    /*23*/
    "34",
    /*24*/
    "6",
    /*25*/
    "41",
    /*26*/
    "16",
    /*27*/
    "126",
    /*28*/
    "82",
    /*29*/
    "14",
    /*30*/
    "7",
    /*31*/
    "132",
    /*32*/
    "34",
    /*33*/
    "48",
    /*34*/
    "42",
    /*35*/
    "288",
    /*36*/
    "45",
    /*37*/
    "4",
    /*38*/
    "111",
    /*39*/
    "47",
    /*40*/
    "15",
    /*41*/
    "87",
    /*42*/
    "22",
    /*43*/
    "253",
    /*44*/
    "12",
    /*45*/
    "48",
    /*46*/
    "178",
    /*47*/
    "1",
    /*48*/
    "6",
    /*49*/
    "10",
    /*50*/
    "2",
    /*51*/
    "20",
    /*52*/
    "7",
    /*53*/
    "5",
    /*54*/
    "143547",
    /*55*/
    "84",
    /*56*/
    "11",
    /*57*/
    "27",
    /*58*/
    "3",
    /*59*/
    "5",
    /*60*/
    "39",
    /*61*/
    "31",
    /*62*/
    "10",
    /*63*/
    "130",
    /*64*/
    "22",
    /*65*/
    "3",
    /*66*/
    "14",
    /*67*/
    "42",
    /*68*/
    "164045",
    /*69*/
    "11",
    /*70*/
    "481",
    /*71*/
    "86",
    /*72*/
    "84",
    /*73*/
    "13",
    /*74*/
    "8", /*75*/
  ];
}
