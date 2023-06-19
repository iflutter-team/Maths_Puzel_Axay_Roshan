// import 'package:demo_math_puzzel/data_screen/data_screen.dart';
// import 'package:demo_math_puzzel/winner_screen/winner_screen.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class PlayScreenController extends GetxController {
//   String? text = "";
//
//   printValue(int t) {
//     text = ("$text$t");
//   }
//
//   String? text = "";
//   int level1 = 0;
//   bool ad = false;
//
//   SharedPreferences? ps;
//
//   get() async {
//     ps = await SharedPreferences.getInstance();
//     level1 = ps!.getInt("level") ?? 0;
//   }
//
//   void initState() {
//     get();
//   }
//
//   nextLevelFunction() async {
//     await ps!.setString("win${widget.index}", "no");
//     await ps!.setString("skip${widget.index}", "yes");
//     widget.index++;
//
//     widget.index > level1 ? ps!.setInt("level", widget.index) : null;
//     level1 = ps!.getInt("level") ?? 0;
//     print(">>>>>>>>>>ok>>>>$level1");
//   }
//
//   removeButton() {
//     if (text!.isNotEmpty) {
//       text = text!.substring(0, text!.length - 1);
//     }
//     update(["remove"]);
//   }
//
//   submitButton() async {
//     if (text == DataPage.anse[widget.index]) {
//       await ps!.setString("win${widget.index}", "yes");
//       await ps!.setString("skip${widget.index}", "no");
//       widget.index++;
//       widget.index > level1 ? ps!.setInt("level", widget.index) : null;
//       level1 = ps!.getInt("level") ?? 0;
//       print(">>>>>>>>>>ok>>>>$level1");
//       // await ps!.setInt("level", widget.index);
//
//       Get.off(WinPage(widget.index));
//     }
//     update(['submit']);
//   }
// }
