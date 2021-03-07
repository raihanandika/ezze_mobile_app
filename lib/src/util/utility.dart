import 'package:flutter/material.dart';

class Utility {
  BuildContext context;
  Utility(this.context);
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

Widget spaceHeight(double value) {
  return SizedBox(
    height: value,
  );
}

Widget spaceWidth(double value) {
  return SizedBox(
    width: value,
  );
}

Widget line(int color, double width, double height) => Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2), color: Color(color)));
