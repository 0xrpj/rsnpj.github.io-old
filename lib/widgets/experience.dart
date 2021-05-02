import 'package:flutter/material.dart';
import 'package:personalportfolio/widgets/Experience_widget.dart';

import '../constants.dart';

class Experience extends StatelessWidget {
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
            ExperienceTile(),
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

class ExperienceTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.work,
          size: _width <= 900 ? 35 : 50,
        ),
        SizedBox(
          width: 10,
        ),
        SelectableText(
          'Experience',
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
