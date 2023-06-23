import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

import 'splesh_screen/splesh_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UnityAds.init(
    gameId: '5302933',
    onComplete: () => print('Initialization Complete'),
    onFailed: (error, message) =>
        print('Initialization Failed: $error $message'),
  );
  runApp(
    GetMaterialApp(
      home: const LevelScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
