import 'package:demo_math_puzzel/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget playScreenCommon(String num, int value) {
  Get.put(PlayScreenController());
  return InkWell(
    onTap: () {
      print(value);
    },
    child: Container(
      height: Get.height * 0.090,
      width: Get.width * 0.090,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssertRes.numberImage,
          ),
        ),
      ),
      child: Text(
        num,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontFamily: 'chalk'),
      ),
    ),
  );
}
