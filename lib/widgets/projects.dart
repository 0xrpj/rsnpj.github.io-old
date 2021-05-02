import 'package:flutter/material.dart';
import 'package:personalportfolio/widgets/projects_widget.dart';

import '../constants.dart';

class Projects extends StatelessWidget {
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
            ProjectTile(),
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
                  SizedBox(
                    width: 350,
                    child: ProjectsWidget(
                      projectName: 'Chat application',
                      projectDesc:
                          'Coded a chat application from with HTML, CSS, JS, NodeJS, Express, and Socket.io but with no database to store data (for privacy concerns).',
                      url:
                          'https://github.com/rsnpj/Inventory-Managment-System-in-C',
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: 350,
                    child: ProjectsWidget(
                      projectName: 'Inventory Management',
                      projectDesc:
                          'Wrote a simple yet useful C program to take care of inventories on a small vegetable shop. It handles basic CRUD operations locally with searching ability and password protection.',
                      url:
                          'https://github.com/rsnpj/Inventory-Managment-System-in-C',
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: 340,
                    child: ProjectsWidget(
                      projectName: 'Misc Small Projects',
                      projectDesc:
                          'I worked in a lot of small projects including the design and deployment of a vscode theme, dating app UI (in flutter), Phonebook management (in java), cafe website UI and a lot more.',
                      url: 'https://github.com/rsnpj?tab=repositories',
                    ),
                  ),
                  SizedBox(
                    height: 100,
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

class ProjectTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.computer,
          size: _width <= 900 ? 35 : 50,
        ),
        SizedBox(
          width: 10,
        ),
        SelectableText(
          'projects',
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
