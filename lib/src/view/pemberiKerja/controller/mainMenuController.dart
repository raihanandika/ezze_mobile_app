import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/view/activity.dart';
import 'package:ezze/src/view/pemberiKerja/view/bantuan.dart';
import 'package:ezze/src/view/pemberiKerja/view/home.dart';
import 'package:ezze/src/view/pemberiKerja/view/location.dart';
import 'package:ezze/src/view/pemberiKerja/view/note.dart';
import 'package:ezze/src/view/pemberiKerja/view/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController {
  // controller fotr bottom nav bar
  static MainmenuController get to => Get.find();
  final currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  List<Widget> pages = [
    HomePage(),
    LocationPage(),
    BantuanPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  Widget get currentPage => pages[currentIndex.value];
  void changePage(int index) => currentIndex.value = index;
}
