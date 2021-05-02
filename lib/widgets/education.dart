import 'package:flutter/material.dart';
import 'package:personalportfolio/widgets/education_widget.dart';

import '../constants.dart';

class Education extends StatelessWidget {
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
            EducationTile(),
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

class EducationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.school_sharp,
          size: _width <= 900 ? 35 : 50,
        ),
        SizedBox(
          width: 10,
        ),
        SelectableText(
          'Education',
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
