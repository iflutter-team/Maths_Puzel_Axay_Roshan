import 'package:demo_math_puzzel/level_screen/level_controller.dart';
import 'package:demo_math_puzzel/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget levelBg() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      // color: Colors.black
      image: DecorationImage(
          image: AssetImage(AssertRes.backGroundImage), fit: BoxFit.fill),
    ),
    child: Column(
      children: [
        Container(
          height: Get.height * 0.25,
          width: Get.width,
          padding: EdgeInsets.fromLTRB(Get.width * 0.1, Get.height * 0.05,
              Get.width * 0.1, Get.height * 0.02),
          child: const Image(
            image: AssetImage(AssertRes.pImage),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: Get.height * 0.75,
          width: double.infinity,
          // color: Colors.orange,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
                childAspectRatio: 1.6),
            itemCount: 75,
            itemBuilder: (context, index) {
              if (LevelController.wList[index] == "yes") {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssertRes.boxOpen))),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 10,
                        ),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(AssertRes.loseStarImage),
                          fit: BoxFit.fill,
                        )),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontFamily: "chalk",
                            color: const Color(0xff7f181b),
                            fontSize: Get.width * 0.07,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                );
              }
              if (LevelController.sList[index] == "yes") {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssertRes.boxOpen))),
                  child: InkWell(
                    onTap: () {
                      /* Navigator.pushReplacement(context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PlayPage(index);
                              },
                            ));*/
                    },
                    child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontFamily: "chalk",
                            color: const Color(0xfffcac70),
                            fontSize: Get.width * 0.07,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                );
              }
              if (index == LevelController.level2) {
                return Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AssertRes.boxOpen))),
                    child: GetBuilder<LevelController>(
                      builder: (controller) {
                        return InkWell(
                          onTap: () => controller.levelToPlayScreen(),
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                              ),
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontFamily: "chalk",
                                  color: const Color(0xfffcac70),
                                  fontSize: Get.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        );
                      },
                    ));
              }
              return Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(AssertRes.boxOpen))),
                child: Image.asset(AssertRes.boxClose),
              );
            },
          ),
        ),
      ],
    ),
  );
  /*Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
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
        Image.asset(
          AssertRes.pImage,
          scale: 2.5,
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
                decoration: const BoxDecoration(
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
                ),
              );
            },
          ),
        ),
      ],
    ),
  );*/
}
