import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personalportfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectsWidget extends StatefulWidget {
  final String projectName;
  final String projectDesc;
  final String url;
  ProjectsWidget({this.projectName, this.projectDesc, this.url});
  @override
  _ProjectsWidgetState createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.waves,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              SelectableText(
                widget.projectName,
                style: projectTitleStyle,
                maxLines: 1,
              ),
            ],
          ),
          SizedBox(
            height: _width <= 600 ? 45 : 20,
          ),
          SelectableText(
            widget.projectDesc,
            textAlign: TextAlign.left,
            style: projectDescriptionStyle,
          ),
          SizedBox(
            height: 20,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (value) {
              setState(() {
                firstProjectIconColor = Colors.white;
                firstProjectBackgroundColor = Colors.black;
              });
            },
            onExit: (value) {
              setState(() {
                firstProjectIconColor = Colors.black;
                firstProjectBackgroundColor = Color.fromRGBO(243, 243, 243, 1);
              });
            },
            child: GestureDetector(
              onTap: () {
                launch(widget.url);
              },
              child: Tooltip(
                message: 'See Source',
                preferBelow: false,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 250,
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: firstProjectBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Icon(
                    Icons.code,
                    color: firstProjectIconColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
