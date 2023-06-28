import 'package:demo_math_puzzel/screens/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Playscreen extends StatelessWidget {
<<<<<<< Updated upstream
  int? index;
  Playscreen({super.key,this.index});
=======
  // int index;
  Playscreen({super.key});
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    Get.put(PlayScreenController());
    return Scaffold(
      body: playScreenWidget(),
    );
  }
}
