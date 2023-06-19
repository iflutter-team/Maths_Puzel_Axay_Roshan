import 'package:demo_math_puzzel/data_screen/data_screen.dart';
import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget winnerPageWidget() {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.05, vertical: Get.height * 0.15),
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssertRes.backGroundImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AssertRes.winnerFrame,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "COMPLETED",
            style: TextStyle(
              fontFamily: "chalk",
              color: const Color(0xffffcd39),
              fontSize: DataPage.width! * 0.09,
            ),
          ),
          // Text(
          //   "LEVEL ${widget.index}",
          //   style: TextStyle(
          //     fontFamily: "chalk",
          //     color: const Color(0xffffcd39),
          //     fontSize: DataPage.width! * 0.1,
          //   ),
          // ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssertRes.mainMenuImage,
              scale: 4.7,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssertRes.pImage,
              scale: 4.7,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssertRes.mainMenuImage,
              scale: 4.7,
            ),
          ),
          SizedBox(height: Get.height * 0.015),
        ],
      ),
    ),
  );
}
