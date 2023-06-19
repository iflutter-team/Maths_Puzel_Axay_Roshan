import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget levelBg() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          AssertRes.backGroundImage,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(height: 50),
        Image(
          image: AssetImage(AssertRes.pImage),
        ),
        SizedBox(
          height: Get.height * 0.75,
          width: Get.width,
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 10, right: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2),
            itemCount: 75,
            itemBuilder: (context, index) {
              return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssertRes.boxOpen),
                    ),
                  ),
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontFamily: "chalk",
                      color: Colors.white,
                      fontSize: Get.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            },
          ),
        ),
      ],
    ),
  );
}
