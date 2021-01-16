import 'package:flutter/material.dart';
import 'package:personalportfolio/screens/desktop_screen.dart';
import 'package:personalportfolio/screens/mobile.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    if (_width <= 600) {
      return Mobile();
    } else
      return DesktopScreen();
  }
}
