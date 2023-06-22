import 'package:demo_math_puzzel/ads/unity_ads.dart';
import 'package:demo_math_puzzel/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*class HomePageController extends GetxController {
  // SharedPreferences? ps;
  int level = 0;

  // get() async {
  //   ps = await SharedPreferences.getInstance();
  //   level = ps!.getInt("level") ?? 0;
  // }

  // @override
  // void onInit(){
  //   // Get called when controller is created
  //   super.onInit();
  //   get();
  // }

  startToPlayScreen() {
    () {
       level = ps!.getInt("level") ?? 0;
      if (kDebugMode) {
        print("<<<<<<<<<<<<<<$level");
      }
      // Get.to();
    };
    update(["start"]);
  }
}*/
class HomePageController extends GetxController {

  AudioController audioController=Get.put(AudioController());
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await AdManager.loadUnityIntAd();
      await AdManager.loadUnityRewardedAd();
      await audioController.backGroundSound();

    });
  }
  @override
  void onClose(){
   audioController.homePageSong.stop();
    super.onClose();
  }

  Future<void> startToPlay() async {
    await AdManager.showIntAd();
    Get.to(() => const Playscreen());
    audioController.homePageSong.stop();
    await audioController.startGame();
    update(['start']);
  }

  void startToPuzzel() {
    Get.to(() => const LevelScreen());
    update(['puzzel']);
  }
}
