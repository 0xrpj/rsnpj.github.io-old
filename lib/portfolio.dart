import 'package:flutter/material.dart';
import 'package:personalportfolio/screens/desktop_screen.dart';
import 'package:personalportfolio/screens/medium.dart';
import 'package:personalportfolio/screens/mobile.dart';
import 'package:personalportfolio/screens/smallest.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    if (_width <= 300) {
      return Smallest();
    } else if (_width > 300 && _width <= 720) {
      return Mobile();
    } else if (_width > 720 && _width <= 1100) {
      return MediumScreen();
    } else
      return DesktopScreen();

    // if (_width <= 720 && _width > 300) {
    //   return Mobile();
    // } else if (_width <= 1100) {
    //   return MediumScreen();
    // } else if (_width <= 300) {
    //   return Smallest();
    // } else
    //   return DesktopScreen();
  }
}
