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
                  ProjectsWidget(
                    projectName: 'Air Quality Index Mobile App',
                    projectDesc:
                        'Air Quality Index App is used to check the quality of air of your location\nI am using IqAir API to display information about your location.\nThis application is built in Flutter.',
                    url:
                        'https://github.com/FarrukhSajjad/airquality-flutterapp',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ProjectsWidget(
                    projectName: 'SPACE - Breathing Excercise Mobile App',
                    projectDesc:
                        'SPACE is a breathing excercise app build using flutter.\nIt consists of various breathing excercise to help us relax.',
                    url:
                        'https://github.com/FarrukhSajjad/space-breathingexerciseapp-flutter',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ProjectsWidget(
                    projectName: 'Hashtags for Instagram',
                    projectDesc:
                        'This app contains a large collection of different categories of hashtags.\nThese hashtags helps to reach out to more people on instagram.\nThis app is built using Flutter',
                    url: 'https://github.com/FarrukhSajjad/hastagsforinstagram',
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
