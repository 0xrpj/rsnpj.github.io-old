import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants.dart';

class Aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
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
                    'Hi, Nice to see you here.',
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: _width <= 1100 ? 30 : 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SelectableText(
                    'So, I currently am a CS Undergraduate and soon to be a software engineer \n\nwith a high level of interest (massive) in development and deployment of \n\nweb & mobile applications and anything that involves computers. :)',
                    style: _width <= 1100
                        ? projectDescriptionStyle.copyWith(fontSize: 12)
                        : projectDescriptionStyle,
                    textAlign:
                        _width <= 1100 ? TextAlign.center : TextAlign.right,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(
                    // 'Proficient in Web development (MERN Stack) and App Development (flutter).',
                    '',
                    style: _width <= 1100
                        ? projectDescriptionStyle.copyWith(fontSize: 12)
                        : projectDescriptionStyle,
                    textAlign:
                        _width <= 1100 ? TextAlign.center : TextAlign.right,
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
                          fontSize: 30,
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
                        size: 40,
                      ),
                      // Icon(Zocial.)
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        MdiIcons.console,
                        size: 40,
                      ),
                      // Icon(Zocial.)
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        MdiIcons.ubuntu,
                        size: 40,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        MdiIcons.microsoftVisualStudioCode,
                        size: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        MdiIcons.androidStudio,
                        size: 40,
                        color: Colors.black,
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
        // Icon(Iconic.)
        // SizedBox(
        //   width: 35,
        // ),
        Icon(
          Brandico.wordpress_1,
          size: _width <= 720 ? 30 : 40,
        ),
        // Icon(Zocial.)
        SizedBox(
          width: 35,
        ),

        Icon(
          MdiIcons.languageHtml5,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.languageCss3,
          size: _width <= 720 ? 30 : 40,
        ),
        // Icon(Zocial.)
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.firebase,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.react,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: 35,
        ),
        Icon(
          MdiIcons.nodejs,
          size: _width <= 720 ? 30 : 40,
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
            fontSize: 30,
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
        ColorFiltered(
          colorFilter: ColorFilter.matrix(<double>[
            0.2126,
            0.7152,
            0.0722,
            0,
            0,
            0.2126,
            0.7152,
            0.0722,
            0,
            0,
            0.2126,
            0.7152,
            0.0722,
            0,
            0,
            0,
            0,
            0,
            1,
            0,
          ]),
          child: FlutterLogo(
            size: _width <= 720 ? 30 : 40,
          ),
        ),
        SizedBox(
          width: _width <= 720 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageJava,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: _width <= 720 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageC,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: _width <= 720 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languagePython,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: _width <= 720 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageHtml5,
          size: _width <= 720 ? 30 : 40,
        ),
        SizedBox(
          width: _width <= 720 ? 25 : 35,
        ),
        Icon(
          MdiIcons.languageJavascript,
          size: _width <= 720 ? 30 : 40,
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
            fontSize: 30,
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
            size: _width <= 900 ? 35 : 40,
          ),
          SizedBox(
            width: 10,
          ),
          SelectableText(
            'about me',
            style: _width <= 900
                ? infortitleStyle.copyWith(fontSize: 38)
                : infortitleStyle,
          ),
        ],
      ),
    );
  }
}
