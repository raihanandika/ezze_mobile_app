import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/controller/navigationController.dart';
import 'package:ezze/src/view/pemberiKerja/view/subHome/butuhBantuan.dart';
import 'package:ezze/src/view/pemberiKerja/view/subHome/penawaranBantuan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class HomePage extends StatelessWidget {
  final navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ModalProgressHUD(
        inAsyncCall: navController.isLoading.value,
        color: Colors.black,
        progressIndicator: CircularProgressIndicator(
          backgroundColor: Colors.black12,
        ),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Color(whiteGrey),
              appBar: AppBar(
                title: Container(
                  width: Utility(context).width,
                  height: 60,
                  color: Color(blueSec),
                  child: Center(
                    child: Image.asset(
                      icon,
                      width: 100,
                    ),
                  ),
                ),
                bottom: TabBar(
                  controller: navController.controller,
                  tabs: navController.myTabs,
                  indicator: BoxDecoration(color: Colors.white),
                  labelColor: Colors.grey,
                  unselectedLabelColor: Colors.white,
                ),
              ),
              body: TabBarView(
                controller: navController.controller,
                children: [
                  PenawaranBantuanPage(),
                  ButuhBantuanPage(),
                ],
              )),
        ),
      ),
    );
  }

  Widget tabbar(BuildContext context) => Container(
        width: Utility(context).width,
        height: 20,
        color: Colors.redAccent,
      );
}

// class HomePage extends StatelessWidget {
//   // final controller = Get.put(HomeController());
//   final controller = Get.put(MainmenuController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Center(
//               child: Image.asset(
//             icon,
//             width: 100,
//           )),
//           bottom: TabBar(
//               controller: controller.controller, tabs: controller.myTabs)),
//       body: TabBarView(
//         controller: controller.controller,
//         children: [
//           PenawaranBantuanPage(),
//           ButuhBantuanPage(),
//         ],
//       ),
//       //    body:

//       // Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       Obx(() => Text("Click: ${controller.count}")),
//       //       RaisedButton(
//       //         child: Text('Next Route'),
//       //         onPressed: () {},
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // floatingActionButton: FloatingActionButton(
//       //     child: Icon(Icons.add), onPressed: controller.increment),
//     );
//   }
//}
