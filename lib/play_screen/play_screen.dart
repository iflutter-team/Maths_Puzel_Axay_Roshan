import 'package:demo_math_puzzel/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/play_screen/play_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Playscreen extends StatelessWidget {
  const Playscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PlayScreenController());
    return Scaffold(
      // body: SafeArea(
      //   child: playScreenWidget(),
      // ),
    );
  }
}
