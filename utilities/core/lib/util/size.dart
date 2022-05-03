import 'package:flutter/material.dart';

class S {
  static SizedBox h(double height) {
    return SizedBox(height: height);
  }

  static SizedBox rbh(BuildContext context, double percent) {
    return SizedBox(height: rH(context, percent));
  }

  static SizedBox rbw(BuildContext context, double percent) {
    return SizedBox(height: rW(context, percent));
  }

  static double rH(BuildContext context, double h) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    if (isPortrait) {
      return MediaQuery.of(context).size.height * h;
    } else {
      return MediaQuery.of(context).size.width * h;
    }
  }

  static double rW(BuildContext context, double w) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    if (isPortrait) {
      return MediaQuery.of(context).size.width * w;
    } else {
      return MediaQuery.of(context).size.height * w;
    }
  }

  static SizedBox w(double width, [BuildContext? context]) {
    return SizedBox(width: width);
  }
}
