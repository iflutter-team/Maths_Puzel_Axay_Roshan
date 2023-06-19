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
