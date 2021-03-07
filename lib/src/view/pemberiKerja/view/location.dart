import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/controller/navigationController.dart';
import 'package:ezze/src/view/pemberiKerja/view/subHome/butuhBantuan.dart';
import 'package:ezze/src/view/pemberiKerja/view/subLocation/penawaranBantuan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LocationPage extends StatelessWidget {
  final navController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => ModalProgressHUD(
          inAsyncCall: navController.isLoading.value,
          color: Colors.black,
          progressIndicator: CircularProgressIndicator(
            backgroundColor: Colors.black12,
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Color(whiteGrey),
              appBar: AppBar(
                  title: Text(
                    "Disekitarmu",
                    style: TextStyle(color: Colors.white),
                  ),
                  bottom: TabBar(
                    controller: navController.controller,
                    tabs: navController.myTabs,
                    indicator: BoxDecoration(color: Colors.white),
                    labelColor: Colors.grey,
                    unselectedLabelColor: Colors.white,
                  )),
              body: TabBarView(
                controller: navController.controller,
                children: [
                  PenawaranBantuanPage(),
                  ButuhBantuanPage(),
                ],
              ),
            ),
          ),
        ));
  }
}
