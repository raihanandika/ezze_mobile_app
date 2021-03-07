import 'dart:async';

import 'package:ezze/src/component/img.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  static LandingController get to => Get.find();
  final currentPage = 0.obs;

  static var a = Text("uang tambahan",
      style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white));
  static var b = Text("Ezze!",
      style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white));

  List text = [
    "Manfaatkan waktumu untuk mendapatkan\n $a dengan membantu orang\nlain, hanya di $b",
    "Membantu sekaligus mendapatkan uang\ntambahan, hanya di $b"
  ];

  List imgSlider = [slider1, slider2];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
