import 'package:demo_math_puzzel/play_screen/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splesh_screen/splesh_screen.dart';

main() {
  runApp(
    GetMaterialApp(
      home: const Playscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
