import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personalportfolio/constants.dart';

class ExperienceWidget extends StatefulWidget {
  final String projectName;
  final String projectDesc;
  final String url;
  ExperienceWidget({this.projectName, this.projectDesc, this.url});
  @override
  _ExperienceWidgetState createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
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
            height: _width <= 720 ? 45 : 20,
          ),
          SelectableText(
            widget.projectDesc,
            textAlign: _width <= 1100 ? TextAlign.left : TextAlign.justify,
            style: _width <= 1100
                ? projectDescriptionStyle.copyWith(
                    fontSize: 13,
                  )
                : projectDescriptionStyle,
          ),
          SizedBox(
            height: _width <= 720 ? 45 : 2,
          ),
        ],
      ),
    );
  }
}
