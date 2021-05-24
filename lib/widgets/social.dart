import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class Socials extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Socials> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Github
          Tooltip(
            message: 'GitHub',
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            preferBelow: false,
            padding: EdgeInsets.all(10),
            height: 50,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (value) {
                setState(() {
                  githubiconColor = Colors.white;
                  githubiconBackgroundColor = Colors.black;
                });
              },
              onExit: (value) {
                setState(() {
                  githubiconColor = Colors.black;
                  githubiconBackgroundColor = Color.fromRGBO(243, 243, 243, 1);
                });
              },
              child: GestureDetector(
                onTap: () {
                  launchUrl('https://github.com/rsnpj');
                },
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  decoration: BoxDecoration(
                    color: githubiconBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: githubiconBorderColor,
                      width: 2.5,
                    ),
                  ),
                  child: Center(
                    child: SocialMediaButton.github(
                      url: 'https://github.com/rsnpj',
                      color: githubiconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // Linkedin
          Tooltip(
            message: 'LinkedIn',
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            preferBelow: false,
            padding: EdgeInsets.all(10),
            height: 50,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (value) {
                setState(() {
                  linkediniconColor = Colors.white;
                  linkediniconBackgroundColor = Colors.black;
                });
              },
              onExit: (value) {
                setState(() {
                  linkediniconColor = Colors.black;
                  linkediniconBackgroundColor =
                      Color.fromRGBO(243, 243, 243, 1);
                });
              },
              child: GestureDetector(
                onTap: () {
                  launchUrl('https://www.linkedin.com/in/rsnpj/');
                },
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  decoration: BoxDecoration(
                    color: linkediniconBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: linkediniconBorderColor,
                      width: 2.5,
                    ),
                  ),
                  child: Center(
                    child: SocialMediaButton.linkedin(
                      url: 'https://www.linkedin.com/in/rsnpj/',
                      color: linkediniconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // facebook
          Tooltip(
            message: 'Facebook',
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            preferBelow: false,
            padding: EdgeInsets.all(10),
            height: 50,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (value) {
                setState(() {
                  facebookiconColor = Colors.white;
                  facebookiconBackgroundColor = Colors.black;
                });
              },
              onExit: (value) {
                setState(() {
                  facebookiconColor = Colors.black;
                  facebookiconBackgroundColor =
                      Color.fromRGBO(243, 243, 243, 1);
                });
              },
              child: GestureDetector(
                onTap: () {
                  launchUrl('https://facebook.com/rsnpj');
                },
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  decoration: BoxDecoration(
                    color: facebookiconBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: facebookiconBorderColor,
                      width: 2.5,
                    ),
                  ),
                  child: Center(
                    child: SocialMediaButton.facebook(
                      url: 'https://facebook.com/rsnpj',
                      color: facebookiconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Medium
          SizedBox(
            width: 10,
          ),
          Tooltip(
            message: 'Medium',
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            preferBelow: false,
            padding: EdgeInsets.all(10),
            height: 50,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (value) {
                setState(() {
                  mediumiconColor = Colors.white;
                  mediumiconBackgroundColor = Colors.black;
                });
              },
              onExit: (value) {
                setState(() {
                  mediumiconColor = Colors.black;
                  mediumiconBackgroundColor = Color.fromRGBO(243, 243, 243, 1);
                });
              },
              child: GestureDetector(
                onTap: () {
                  launchUrl('https://rsnpj.medium.com/');
                },
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  decoration: BoxDecoration(
                    color: mediumiconBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: mediumiconBorderColor,
                      width: 2.5,
                    ),
                  ),
                  child: Center(
                    child: SocialMediaButton.medium(
                      url: 'https://rsnpj.medium.com/',
                      color: mediumiconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Tooltip(
            message: 'CV',
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            preferBelow: false,
            padding: EdgeInsets.all(10),
            height: 50,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (value) {
                setState(() {
                  driveIconColor = Colors.white;
                  driveIconBackgroundColor = Colors.black;
                });
              },
              onExit: (value) {
                setState(() {
                  driveIconColor = Colors.black;
                  driveIconBackgroundColor = Color.fromRGBO(243, 243, 243, 1);
                });
              },
              child: GestureDetector(
                onTap: () {
                  launchUrl(
                      'https://media-exp1.licdn.com/media/AAYUAgR3AAgAAQAAAAAAACemqKNTw7krThWxM18NHeu3Ww.png');
                },
                child: AnimatedContainer(
                  padding: EdgeInsets.all(8),
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  decoration: BoxDecoration(
                    color: driveIconBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: driveiconBorderColor,
                      width: 2.5,
                    ),
                  ),
                  child: Icon(
                    MdiIcons.googleDrive,
                    size: 24,
                    color: driveIconColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void launchUrl(String s) async {
    if (await canLaunch(s))
      await launch(s);
    else
      // can't launch url, there is some error
      throw "Could not launch $s";
  }
}
