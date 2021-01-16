import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants.dart';

class Aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ProgrammingTile(),
                  SizedBox(
                    height: 20,
                  ),
                  ProgrammingLanguages(),
                  SizedBox(
                    height: 30,
                  ),
                  WebTile(),
                  SizedBox(
                    height: 30,
                  ),
                  WebTech(),
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
            AboutmeTile()
          ],
        ),
      ),
    );
  }
}

class WebTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(
          size: _width <= 600 ? 40 : 50,
        ),
        // Icon(Iconic.)
        SizedBox(
          width: 35,
        ),
        Icon(
          Brandico.wordpress_1,
          size: _width <= 600 ? 40 : 50,
        ),
        // Icon(Zocial.)
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.googleAds,
          size: _width <= 600 ? 40 : 50,
        ),
        // Icon(Zocial.)
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.firebase,
          size: _width <= 600 ? 40 : 50,
        ),
      ],
    );
  }
}

class WebTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

class ProgrammingLanguages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.languageJava,
          size: _width <= 600 ? 40 : 50,
        ),
        SizedBox(
          width: _width <= 600 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageCpp,
          size: _width <= 600 ? 40 : 50,
        ),
        SizedBox(
          width: _width <= 600 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageHtml5,
          size: _width <= 600 ? 40 : 50,
        ),
        SizedBox(
          width: _width <= 600 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageCss3,
          size: _width <= 600 ? 40 : 50,
        ),
        SizedBox(
          width: _width <= 600 ? 25 : 35,
        ),
        Icon(
          MdiIcons.androidStudio,
          size: _width <= 600 ? 40 : 50,
        ),
      ],
    );
  }
}

class ProgrammingTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

class AboutmeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
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
            style: _width <= 600
                ? infortitleStyle.copyWith(fontSize: 38)
                : infortitleStyle,
          ),
        ],
      ),
    );
  }
}
