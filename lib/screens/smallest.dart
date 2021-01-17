import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Smallest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get a Bigger Display',
            ),
            Icon(FontAwesome.hand_peace_o),
          ],
        ),
      ),
    );
  }
}
