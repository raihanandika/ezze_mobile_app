import 'dart:async';

import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:flutter/material.dart';

import 'landing_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSlashScreen();
  }

  startSlashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        // return LandingPage();
        return Landing();
        // return HomePage();
        // return MainMenuPage();
        // return Bantuan();
        // return Profile();
        // return Bantuan();
      }));
    });
  }

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
          child: Center(
            child: Image.asset(
              icon,
              width: 241,
              height: 66,
            ),
          ),
        ),
      ),
    );
  }
}
