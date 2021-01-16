import 'package:flutter/material.dart';
import 'package:personalportfolio/widgets/social.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SelectableText(
            'Copyright © 2021 All rights reserved',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          Socials(),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'get code </>',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
