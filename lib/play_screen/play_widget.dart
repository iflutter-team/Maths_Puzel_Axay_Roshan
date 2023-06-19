import 'package:demo_math_puzzel/play_screen/playscreen_common.dart';
import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget playScreenWidget() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssertRes.backGroundImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AssertRes.nextImage, scale: 20),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AssertRes.levelImage,
                      ),
                      scale: 8)),
              child: Text(
                "LEVEL 1",
                style: TextStyle(
                  fontFamily: "chalk",
                  color: const Color(0xff7f181b),
                  fontSize: Get.width * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(AssertRes.hintImage, scale: 15),
          ],
        ),
        SizedBox(height: Get.height * 0.10),
        Image.asset(
          AssertRes.puzzle1Image,
          scale: 4.5,
        ),
        SizedBox(height: Get.height * 0.03),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  // child: const Text(
                  //   "1",
                  //   style: TextStyle(
                  //       fontSize: 30, color: Colors.white, fontFamily: 'chalk'),
                  // ),
                ),
              ),
              SizedBox(
                width: Get.width * 0.03,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  AssertRes.backImage,
                  scale: 25,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            playScreenCommon("1"),
            playScreenCommon("2"),
            playScreenCommon("3"),
            playScreenCommon("4"),
            playScreenCommon("5"),
            playScreenCommon("6"),
            playScreenCommon("7"),
            playScreenCommon("8"),
            playScreenCommon("9"),
            playScreenCommon("0"),
          ],
        ),
        SizedBox(height: Get.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(AssertRes.submitImage, scale: 3.5),
                // const Text(StringRes.submitText),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
