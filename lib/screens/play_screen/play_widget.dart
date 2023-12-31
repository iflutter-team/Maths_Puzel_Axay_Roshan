import 'package:demo_math_puzzel/screens/play_screen/play_controller.dart';
import 'package:demo_math_puzzel/screens/play_screen/playscreen_common.dart';
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
        SizedBox(height: Get.height * 0.050),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetBuilder<PlayScreenController>(
              id: 'Hint',
              builder: (controller) => InkWell(
                onTap: () => controller.hintDialog(),
                child: Image.asset(AssertRes.hintImage, scale: 22),
              ),
            ),
            Container(
              height: Get.height * 0.07,
              width: Get.width * 0.45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssertRes.levelImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: GetBuilder<PlayScreenController>(
                  id: 'level++',
                  builder: (controller) => Text(
                    "LEVEL ${PlayScreenController.number + 1}",
                    style: TextStyle(
                      fontFamily: "chalk",
                      color: const Color(0xff7f181b),
                      fontSize: Get.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(AssertRes.hintImage, scale: 22),
            GetBuilder<PlayScreenController>(
              id: 'nextLevel',
              builder: (controller) => InkWell(
                onTap: () => controller.nextLevelFunction(),
                child: Image.asset(
                  AssertRes.nextImage,
                  scale: 20,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.10),
        GetBuilder<PlayScreenController>(
          id: 'puzzleImages',
          builder: (controller) => Image.asset(
            PlayScreenController.tableImages[PlayScreenController.imageIndex],
            scale: 4.5,
          ),
        ),
        SizedBox(height: Get.height * 0.05),
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
                  child: GetBuilder<PlayScreenController>(
                    id: 'valueText',
                    builder: (controller) => Text(
                      controller.val.toString(),
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'chalk'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: Get.width * 0.03,
              ),
              GetBuilder<PlayScreenController>(
                id: "remove",
                builder: (controller) => InkWell(
                  onTap: () => controller.removeButton(),
                  child: Image.asset(
                    AssertRes.backImage,
                    scale: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            playScreenCommon("1", 1),
            playScreenCommon("2", 2),
            playScreenCommon("3", 3),
            playScreenCommon("4", 4),
            playScreenCommon("5", 5),
            playScreenCommon("6", 6),
            playScreenCommon("7", 7),
            playScreenCommon("8", 8),
            playScreenCommon("9", 9),
            playScreenCommon("0", 0),
          ],
        ),
        SizedBox(height: Get.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<PlayScreenController>(
              id: "submit",
              builder: (controller) => InkWell(
                onTap: () => controller.submitButton(),
                child: Image.asset(AssertRes.submitImage, scale: 3.5),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
