import 'package:demo_math_puzzel/data_screen/data_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_controller.dart';
import 'package:demo_math_puzzel/winner_screen/winner_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WinPage extends StatelessWidget {
  const WinPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WinnerPageController());
    DataPage(context);
    return Scaffold(
      body: SafeArea(
        child: winnerPageWidget(),
      ),
    );
  }
}