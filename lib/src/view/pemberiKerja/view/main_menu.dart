import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/view/pemberiKerja/controller/mainMenuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainmenuPemberikerja extends StatelessWidget {
  // const Mainmenu({Key key}) : super(key: key);
  final controller = Get.put(MainmenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.currentPage,
          bottomNavigationBar: CurvedNavigationBar(
            key: controller.bottomNavigationKey,
            index: 0,
            height: 50,
            items: <Widget>[
              Icon(Icons.home_outlined, size: 30, color: Colors.white),
              Icon(Icons.pin_drop_outlined, size: 30, color: Colors.white),
              Icon(Icons.add_box_outlined, size: 30, color: Colors.white),
              Icon(Icons.note_add_outlined, size: 30, color: Colors.white),
              Icon(Icons.person_outline, size: 30, color: Colors.white),
            ],
            color: Color(blueSec),
            buttonBackgroundColor: Color(blueSec),
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: controller.changePage,
          ),
        ));
  }
}
