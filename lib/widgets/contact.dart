import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:personalportfolio/widgets/contact_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactTile(),
            SizedBox(
              width: 50,
            ),
            VerticalDivider(
              width: 2,
              color: Colors.black,
              endIndent: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactWidget(
                    projectName: 'Reach me on my mail!',
                    projectDesc:
                        "If you have any queries or have a project in mind, feel\n\nfree to contact me at roshan.parajuly1@gmail.com :)\n\nI am also active on social media so hit the links below!",
                    url: "",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await canLaunch("mailto:roshan.parajuly1@gmail.com")
                          ? await launch("mailto:roshan.parajuly1@gmail.com")
                          : throw 'Could not launch gmail url';
                    },
                    child: Icon(
                      MdiIcons.gmail,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.call,
          size: _width <= 900 ? 35 : 50,
        ),
        SizedBox(
          width: 10,
        ),
        SelectableText(
          'Contact',
          style: _width <= 900
              ? infortitleStyle.copyWith(
                  fontSize: 30,
                )
              : infortitleStyle,
        ),
      ],
    );
  }
}
