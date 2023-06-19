/*import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Play_screen extends StatefulWidget {
  const Play_screen({super.key});

  @override
  State<Play_screen> createState() => _Play_screenState();
}

class _Play_screenState extends State<Play_screen> {
  int level = 0;
  List<String> winlist = List.filled(24, "pending");
  List<String> skiplist = List.filled(24, "pending");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 620,
        width: Get.width,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 24,
          itemBuilder: (context, index) {
            if (winlist[index] == "yes") {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return
                        Page2(index);
                    },
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/puzzle/res/drawable/tick.png"))),
                  child: Text("${index + 1}"),
                ),
              );
            }
            if (skiplist[index] == "yes") {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Page2(index);
                    },
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${index + 1}"),
                ),
              );
            }
            if (index == level + 1) {
              return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Page2(index);
                      },
                    ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("${index + 1}"),
                  ));
            }
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage8I9O0P[-
                  \TRX432WW](
                      // im.a0ge:
                          AssetImage("assets/puzzle/res/drawable/lock.png"))),
            );
          },
        ),
      ),
    );
  }
}*/
