import 'package:flutter/material.dart';
import 'package:personalportfolio/portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roshan Parajuli',
      home: Portfolio(),
    );
  }
}
