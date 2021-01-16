import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/constants.dart';
import 'package:personalportfolio/footer.dart';
import 'package:personalportfolio/widgets/projects_widget.dart';
import 'package:personalportfolio/widgets/social.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DesktopScreen extends StatefulWidget {
  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  launchUrl(String url) async {
    await launch(url);
  }

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
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SelectableText(
                                  'Farrukh',
                                  style: titleTextColor,
                                ),
                                SelectableText(
                                  'Sajjad',
                                  style: titleTextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: SelectableText(
                                    'flutter developer | dart lord',
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
                              height: MediaQuery.of(context).size.height / 2.5,
                              child: SvgPicture.asset(
                                'assets/images/avatar.svg',
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Socials(),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.computer,
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SelectableText(
                              'projects',
                              style: infortitleStyle,
                            ),
                          ],
                        ),
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
                            children: [
                              ProjectsWidget(
                                projectName: 'Air Quality Index Mobile App',
                                projectDesc:
                                    'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                                url:
                                    'https://github.com/FarrukhSajjad/airquality-flutterapp',
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              ProjectsWidget(
                                projectName:
                                    'SPACE - Breathing Excercise Mobile App',
                                projectDesc:
                                    'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                                url:
                                    'https://github.com/FarrukhSajjad/space-breathingexerciseapp-flutter',
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              ProjectsWidget(
                                projectName: 'Hashtags for Instagram',
                                projectDesc:
                                    'Global Weather Web App is used to check weather condition of any location/city by inputting\nthe City name. I am Using AccuWeather API to display information about weather for any\nlocation. This application is build in React and Asp.net Core using Rest API. This is a single\nmodule for Global Tourism Web Application and will be combined with other modules to make\nautomated Tourism web app.',
                                url:
                                    'https://github.com/FarrukhSajjad/hastagsforinstagram',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SelectableText(
                                'Hello! I am Farrukh',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              SelectableText(
                                'I\'m passionate, creative and multi-disciplinary full stack developer working mainly on freelance\nprojects, developing and designing interactive web applications for brands for 4+ years.',
                                style: projectDescriptionStyle,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SelectableText(
                                'Proficinet in Front-end Development, Backend Development and Web Design.',
                                style: projectDescriptionStyle,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SelectableText(
                                'Open source contributer, trying to make the open source projects more functional with my skills and\nefforts.',
                                style: projectDescriptionStyle,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.code,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SelectableText(
                                    'programming',
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    MdiIcons.languageJava,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.languageCpp,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.languageHtml5,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.languageCss3,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.androidStudio,
                                    size: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.web,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SelectableText(
                                    'web',
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  FlutterLogo(
                                    size: 50,
                                  ),
                                  // Icon(Iconic.)
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    Brandico.wordpress_1,
                                    size: 50,
                                  ),
                                  // Icon(Zocial.)
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.googleAds,
                                    size: 50,
                                  ),
                                  // Icon(Zocial.)
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.firebase,
                                    size: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.web,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SelectableText(
                                    'miscelleanous',
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Brandico.github_text,
                                    size: 50,
                                  ),
                                  // Icon(Zocial.)
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.youtubeGaming,
                                    size: 50,
                                  ),
                                  // Icon(Zocial.)
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    MdiIcons.unity,
                                    size: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 2,
                          color: Colors.black,
                          endIndent: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 50,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SelectableText(
                                'about me',
                                style: infortitleStyle,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Footer(),
              ],
            ),
            // Positioned(
            //   top: MediaQuery.of(context).size.height / 2,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 18.0),
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: AnimatedContainer(
            //         duration: Duration(
            //           milliseconds: 250,
            //         ),
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           border: Border.all(
            //             color: Colors.black,
            //             width: 3,
            //           ),
            //         ),
            //         child: Icon(
            //           Icons.menu,
            //           size: 80,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
