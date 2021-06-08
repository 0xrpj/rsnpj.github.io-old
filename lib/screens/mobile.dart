import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:personalportfolio/constants.dart';
import 'package:personalportfolio/footer.dart';
import 'package:personalportfolio/widgets/about_me.dart';
import 'package:personalportfolio/widgets/contact.dart';
import 'package:personalportfolio/widgets/contact_widget.dart';
import 'package:personalportfolio/widgets/education.dart';
import 'package:personalportfolio/widgets/education_widget.dart';
import 'package:personalportfolio/widgets/experience.dart';
import 'package:personalportfolio/widgets/experience_widget.dart';
import 'package:personalportfolio/widgets/projects.dart';
import 'package:personalportfolio/widgets/projects_widget.dart';
import 'package:personalportfolio/widgets/social.dart';
import 'package:url_launcher/url_launcher.dart';

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
                          'Roshan Parajuli',
                          style: titleTextColor,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'Software Engineer',
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
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2.5,
                              child: Image.asset('assets/images/profile.png'))),
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
                      ExperienceTile(),
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
                      ExperienceWidget(
                        projectName: 'Datahub',
                        projectDesc:
                            'Intern\n\nHelpdesk and IT Support\n\nTroubleshooting of hosts in Cloud Infrastructure',
                        url: '',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ExperienceWidget(
                        projectName: 'Freelancer',
                        projectDesc:
                            'Developed several individual level projects\n\nProjects on frontend (React), backend (NodeJS)\n\n& server side (AWS and ACS)',
                        url: '',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      EducationTile(),
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
                      EducationWidget(
                        projectName: 'Herald College Kathmandu',
                        projectDesc:
                            'Bachelors in Computer Science (2019-2022)\n\nFinal year project: Pending\n\nGPA:3.XX',
                        url: '',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      EducationWidget(
                        projectName: 'Jaya Multiple Campus',
                        projectDesc:
                            '+2 in Science (2019-2022)\n\nPhysics+Chemistry+Maths\n\nGPA:3.85',
                        url: '',
                      ),
                      SizedBox(
                        height: 35,
                      ),
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
                        projectName: 'Chat application',
                        projectDesc:
                            'Coded a chat application from with HTML, CSS, JS, NodeJS, Express, and Socket.io but with no database to store data (for privacy concerns).',
                        url: 'https://github.com/rsnpj/Real-time-chat-app',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ProjectsWidget(
                        projectName: 'Inventory Management',
                        projectDesc:
                            'Wrote a simple yet useful C program to take care of inventories on a small vegetable shop. It handles basic CRUD operations locally with searching ability and password protection.',
                        url:
                            'https://github.com/rsnpj/Inventory-Managment-System-in-C',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ProjectsWidget(
                        projectName: 'Misc Small Projects',
                        projectDesc:
                            'I worked in a lot of small projects including the design and deployment of a vscode theme, dating app UI (in flutter), Phonebook management (in java), cafe website UI and a lot more.',
                        url: 'https://github.com/rsnpj/',
                      ),
                      SizedBox(
                        height: 35,
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
                        'So, I currently am a CS Undergraduate and soon to be a software engineer with a high level of interest (massive) in development and deployment of web & mobile applications and anything that involves computers. :)',
                        textAlign: TextAlign.center,
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
                        height: 55,
                      ),
                      WebTile(),
                      SizedBox(
                        height: 20,
                      ),
                      WebTech(),
                      SizedBox(
                        height: 55,
                      ),
                      Row(
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
                            'Misc',
                            style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Brandico.github_text,
                            size: 30,
                          ),
                          // Icon(Zocial.)
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            MdiIcons.console,
                            size: 30,
                          ),
                          // Icon(Zocial.)
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            MdiIcons.ubuntu,
                            size: 30,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            MdiIcons.microsoftVisualStudioCode,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            MdiIcons.androidStudio,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
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
