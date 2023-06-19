import 'package:demo_math_puzzel/level_screen/level_controller.dart';
import 'package:demo_math_puzzel/level_screen/level_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LevelController());
    return Scaffold(
      body: GetBuilder<LevelController>(
        builder: (controller) => controller.lod
            ? levelBg()
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),

      // body: lod
      //     ? Container(
      //         height: DataPage.height,
      //         width: double.infinity,
      //         decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage(
      //                   "Pic/1bg.jpg",
      //                 ),
      //                 fit: BoxFit.fill)),
      //         child: Column(
      //           children: [
      //             Container(
      //               height: DataPage.height! * 0.25,
      //               width: double.infinity,
      //               padding: EdgeInsets.fromLTRB(
      //                   DataPage.width! * 0.1,
      //                   DataPage.height! * 0.05,
      //                   DataPage.width! * 0.1,
      //                   DataPage.height! * 0.02),
      //               child: const Image(
      //                 image: AssetImage("Pic/p.png"),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             SizedBox(
      //               height: DataPage.height! * 0.75,
      //               width: double.infinity,
      //               // color: Colors.orange,
      //               child: GridView.builder(
      //                 gridDelegate:
      //                     const SliverGridDelegateWithFixedCrossAxisCount(
      //                         crossAxisCount: 3,
      //                         crossAxisSpacing: 5,
      //                         mainAxisSpacing: 20,
      //                         childAspectRatio: 1.6),
      //                 itemCount: 75,
      //                 itemBuilder: (context, index) {
      //                   if (wList[index] == "yes") {
      //                     return Container(
      //                       alignment: Alignment.center,
      //                       padding: const EdgeInsets.only(right: 6),
      //                       decoration: const BoxDecoration(
      //                           image: DecorationImage(
      //                               image: AssetImage("Pic/box-open.png"))),
      //                       child: InkWell(
      //                         onTap: () {
      //                           Navigator.pushReplacement(context,
      //                               MaterialPageRoute(
      //                             builder: (context) {
      //                               return PlayPage(index);
      //                             },
      //                           ));
      //                         },
      //                         child: Container(
      //                             height: double.infinity,
      //                             width: double.infinity,
      //                             alignment: Alignment.center,
      //                             padding: const EdgeInsets.only(
      //                               left: 5,
      //                               top: 10,
      //                             ),
      //                             decoration: const BoxDecoration(
      //                                 image: DecorationImage(
      //                               image:
      //                                   AssetImage("Pic/ic_loss_star_big1.png"),
      //                               fit: BoxFit.fill,
      //                             )),
      //                             child: Text(
      //                               "${index + 1}",
      //                               style: TextStyle(
      //                                 fontFamily: "chalk",
      //                                 color: const Color(0xff7f181b),
      //                                 fontSize: DataPage.width! * 0.07,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             )),
      //                       ),
      //                     );
      //                   }
      //                   if (sList[index] == "yes") {
      //                     return Container(
      //                       alignment: Alignment.center,
      //                       decoration: const BoxDecoration(
      //                           image: DecorationImage(
      //                               image: AssetImage("Pic/box-open.png"))),
      //                       child: InkWell(
      //                         onTap: () {
      //                           Navigator.pushReplacement(context,
      //                               MaterialPageRoute(
      //                             builder: (context) {
      //                               return PlayPage(index);
      //                             },
      //                           ));
      //                         },
      //                         child: Container(
      //                             height: double.infinity,
      //                             width: double.infinity,
      //                             alignment: Alignment.center,
      //                             padding: const EdgeInsets.only(
      //                               left: 10,
      //                               top: 10,
      //                             ),
      //                             child: Text(
      //                               "${index + 1}",
      //                               style: TextStyle(
      //                                 fontFamily: "chalk",
      //                                 color: const Color(0xfffcac70),
      //                                 fontSize: DataPage.width! * 0.07,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             )),
      //                       ),
      //                     );
      //                   }
      //                   if (index == level2) {
      //                     return Container(
      //                       alignment: Alignment.center,
      //                       decoration: const BoxDecoration(
      //                           image: DecorationImage(
      //                               image: AssetImage("Pic/box-open.png"))),
      //                       child: InkWell(
      //                         onTap: () {
      //                           Navigator.pushReplacement(context,
      //                               MaterialPageRoute(
      //                             builder: (context) {
      //                               return PlayPage(index);
      //                             },
      //                           ));
      //                         },
      //                         child: Container(
      //                           height: double.infinity,
      //                           width: double.infinity,
      //                           alignment: Alignment.center,
      //                           padding: const EdgeInsets.only(
      //                             left: 10,
      //                             top: 10,
      //                           ),
      //                           child: Text(
      //                             "${index + 1}",
      //                             style: TextStyle(
      //                               fontFamily: "chalk",
      //                               color: const Color(0xfffcac70),
      //                               fontSize: DataPage.width! * 0.07,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     );
      //                   }
      //                   return Container(
      //                     alignment: Alignment.center,
      //                     decoration: const BoxDecoration(
      //                       image: DecorationImage(
      //                         image: AssetImage("Pic/box-open.png"),
      //                       ),
      //                     ),
      //                     child: Image.asset("Pic/box-close.png"),
      //                   );
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       )
      //     : const Center(
      //         child: CircularProgressIndicator(),
      //       ),
    );
  }
}
