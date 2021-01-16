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
                    projectName: 'SPACE - Breathing Excercise Mobile App',
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
    return Row(
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
    );
  }
}
