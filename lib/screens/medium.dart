import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/widgets/about_me.dart';
import 'package:personalportfolio/widgets/contact.dart';
import 'package:personalportfolio/widgets/education.dart';
import 'package:personalportfolio/widgets/experience.dart';
import 'package:personalportfolio/widgets/projects.dart';
import 'package:personalportfolio/widgets/social.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../footer.dart';

Animation<double> _animation;
AnimationController _animationController;

IconData iconData = Icons.menu;

class MediumScreen extends StatefulWidget {
  @override
  _MediumScreenState createState() => _MediumScreenState();
}

class _MediumScreenState extends State<MediumScreen>
    with SingleTickerProviderStateMixin {
  launchUrl(String url) async {
    await launch(url);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.decelerate, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MenuButton(),
      backgroundColor: backgroundCOlor,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        height: _width <= 1100
                            ? MediaQuery.of(context).size.height / 1.5
                            : MediaQuery.of(context).size.height / 2.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SelectableText(
                                  'Roshan',
                                  style: titleTextColor,
                                ),
                                SelectableText(
                                  'Parajuli',
                                  style: titleTextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: SelectableText(
                                    'Software Engineer',
                                    style: GoogleFonts.inconsolata(
                                      color: Colors.black,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 1.5,
                              color: Colors.black,
                              indent: 150,
                              endIndent: 100,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                //color: Colors.red,
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                child: SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        2.5,
                                    child: Image.asset(
                                        'assets/images/profile.png'))),
                          ],
                        ),
                      ),
                      Socials(),
                    ],
                  ),
                ),
                Experience(),
                Education(),
                Projects(),
                Aboutme(),
                Contact(),
                Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatefulWidget {
  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionBubble(
        backGroundColor: backgroundCOlor,
        animation: _animation,
        iconColor: Colors.black,
        iconData: iconData,
        items: [
          Bubble(
            title: "",
            iconColor: Colors.black,
            bubbleColor: backgroundCOlor,
            icon: Icons.arrow_upward,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              scrollController.position.animateTo(
                0,
                duration: Duration(seconds: 1),
                curve: Curves.decelerate,
              );
              setState(() {
                iconData = Icons.menu;
              });
            },
          ),
          Bubble(
            title: "",
            iconColor: Colors.black,
            bubbleColor: backgroundCOlor,
            icon: Icons.work,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              scrollController.position.animateTo(
                MediaQuery.of(context).size.height,
                duration: Duration(seconds: 1),
                curve: Curves.decelerate,
              );
              setState(() {
                iconData = Icons.menu;
              });
            },
          ),
          Bubble(
            title: "",
            iconColor: Colors.black,
            bubbleColor: backgroundCOlor,
            icon: Icons.school_rounded,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              scrollController.position.animateTo(
                MediaQuery.of(context).size.height * 2 - 135,
                duration: Duration(seconds: 1),
                curve: Curves.decelerate,
              );
              setState(() {
                iconData = Icons.menu;
              });
            },
          ),
          Bubble(
            title: "",
            iconColor: Colors.black,
            bubbleColor: backgroundCOlor,
            icon: Icons.laptop,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              scrollController.position.animateTo(
                MediaQuery.of(context).size.height * 2.44,
                duration: Duration(seconds: 1),
                curve: Curves.decelerate,
              );
              setState(() {
                iconData = Icons.menu;
              });
            },
          ),
          Bubble(
            title: "",
            iconColor: Colors.black,
            bubbleColor: backgroundCOlor,
            icon: Icons.info,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              scrollController.position.animateTo(
                MediaQuery.of(context).size.height * 3.8,
                duration: Duration(seconds: 1),
                curve: Curves.decelerate,
              );
              setState(() {
                iconData = Icons.menu;
              });
            },
          ),
        ],
        onPress: () {
          if (_animationController.isCompleted) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }

          if (iconData == Icons.menu) {
            setState(() {
              iconData = Icons.close;
            });
          } else
            setState(() {
              iconData = Icons.menu;
            });
        },
      ),
    );
  }
}
