import 'dart:async';
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
import 'package:demo_math_puzzel/screens/home_screen/home_screen.dart';
import 'package:demo_math_puzzel/screens/splesh_screen/splesh_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Get.off(
        () => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashPage(),
    );
  }
}
