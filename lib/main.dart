import 'package:demo_math_puzzel/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(
    GetMaterialApp(
      home: WinPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
