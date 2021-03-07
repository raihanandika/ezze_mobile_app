import 'dart:ui';

import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:get/get.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  static var a = Text("uang tambahan",
      style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white));
  static var b = Text("Ezze!",
      style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white));

  final List imgSlider = [imgLand1, imgLand2, imgLand3];

  final List text = [
    "Manfaatkan waktumu untuk mendapatkan\nuang tambahan dengan membantu orang\nlain, hanya di Ezze!",
    "Membantu sekaligus mendapatkan uang\ntambahan, hanya di Ezze!",
    "Membantu sekaligus mendapatkan uang\ntambahan, hanya di Ezze!"
  ];
  bool _isPlaying = false;
  GlobalKey _sliderKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Utility(context).width,
          height: Utility(context).height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF029CE4), Color(0xFF19D9FD)])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                top(),
                content(),
                bottom(),
                spaceHeight(5),
                // line(0xFFFFFFFF),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget top() {
    return Container(
      height: Utility(context).width / 7,
      width: Utility(context).width,
      alignment: Alignment.center,
      child: Image.asset(
        icon,
        width: 117,
        height: 32,
      ),
    );
  }

  Widget content() {
    return Container(
      height: Utility(context).height / 1.5,
      width: Utility(context).width,
      child: CarouselSlider.builder(
          key: _sliderKey,
          unlimitedMode: true,
          slideBuilder: (index) {
            return Center(
              child: Container(
                width: Utility(context).width,
                height: Utility(context).width,
                child: Column(
                  children: [
                    spaceHeight(20),
                    Center(
                        child: Text(
                      text[index],
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
                    spaceHeight(30),
                    Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          imgSlider[index],
                          width: 250,
                        )),
                  ],
                ),
              ),
            );
          },
          slideTransform: CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            indicatorRadius: 5,
            currentIndicatorColor: Colors.white,
            indicatorBackgroundColor: Colors.white30,
            padding: EdgeInsets.only(bottom: 30),
          ),
          autoSliderTransitionTime: Duration(milliseconds: 500),
          enableAutoSlider: true,
          itemCount: imgSlider.length),
    );
  }

  Widget bottom() {
    return Container(
      height: Utility(context).width / 2.6,
      width: Utility(context).width,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.offNamed('/loginRegister'),
            child: Container(
              height: 56,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Center(
                child: Text("SAYA INGIN MEMBANTU"),
              ),
            ),
          ),
          spaceHeight(10),
          GestureDetector(
            onTap: () => Get.offNamed('/loginRegister'),
            child: Container(
              height: 56,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 2)),
              child: Center(
                child: Text("SAYA BUTUH BANTUAN"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
