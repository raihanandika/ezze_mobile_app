import 'dart:async';

import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/controller/SSController.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/landing_page.dart';
import 'package:ezze/src/view/login_register/login.dart';
import 'package:ezze/src/view/pemberiKerja/view/main_menu.dart';
import 'package:ezze/src/view/penerimaKerja/view/mainMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/view/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        // landing page
        GetPage(name: '/pemberiKerja', page: () => MainmenuPemberikerja()),
        GetPage(name: '/penerimaKerja', page: () => MainmenuPenerimaKerja()),
        // login and register
        GetPage(name: '/loginRegister', page: () => LoginPage()),
        
      ],
    );
  }
}