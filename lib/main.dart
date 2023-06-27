import 'package:demo_math_puzzel/screens/splesh_screen/splesh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await PrefServices.init();
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
