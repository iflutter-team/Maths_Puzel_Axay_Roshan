import 'package:demo_math_puzzel/screens/ads/unity_ads.dart';
import 'package:demo_math_puzzel/screens/audio_screen/audio_controller.dart';
import 'package:demo_math_puzzel/screens/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/screens/play_screen/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  AudioController audioController = Get.put(AudioController());

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
  void onClose() {
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