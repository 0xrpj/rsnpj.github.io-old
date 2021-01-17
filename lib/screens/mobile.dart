import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/constants.dart';
import 'package:personalportfolio/footer.dart';
import 'package:personalportfolio/widgets/about_me.dart';
import 'package:personalportfolio/widgets/projects.dart';
import 'package:personalportfolio/widgets/projects_widget.dart';
import 'package:personalportfolio/widgets/social.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCOlor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FittedBox(
                        child: Text(
                          'Farrukh Sajjad',
                          style: titleTextColor,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'flutter developer | dart lord',
                          style: GoogleFonts.inconsolata(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1.2,
                      ),
                      Container(
                        //color: Colors.red,
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: SvgPicture.asset(
                          'assets/images/avatar.svg',
                          height: MediaQuery.of(context).size.height / 2.5,
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Socials(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 30,
                    right: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProjectTile(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProjectsWidget(
                        projectName: 'Air Quality Index\nApp',
                        projectDesc:
                            'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                        url:
                            'https://github.com/FarrukhSajjad/airquality-flutterapp',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ProjectsWidget(
                        projectName: 'SPACE - Breathing\nExcerciseApp',
                        projectDesc:
                            'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                        url:
                            'https://github.com/FarrukhSajjad/space-breathingexerciseapp-flutter',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ProjectsWidget(
                        projectName: 'Hashtags for\nInstagram App',
                        projectDesc:
                            'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                        url:
                            'https://github.com/FarrukhSajjad/hastagsforinstagram',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 30,
                    right: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AboutmeTile(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SelectableText(
                        'An easily excited and a highly passionate full stack developer trying to support the world of open source with his little efforts. Full of eagerness to learn and work on new technologies. :)',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProgrammingTile(),
                      SizedBox(
                        height: 10,
                      ),
                      ProgrammingLanguages(),
                      SizedBox(
                        height: 18,
                      ),
                      WebTile(),
                      SizedBox(
                        height: 10,
                      ),
                      WebTech(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Footer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
