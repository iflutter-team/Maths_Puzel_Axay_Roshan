import 'package:demo_math_puzzel/level_screen/level_screen.dart';
import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splesh_screen/splesh_screen.dart';

main() {
  runApp(
    GetMaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
