import 'package:portfoliodev/constants.dart';
import 'package:flutter/material.dart';
import 'package:portfoliodev/models/project.dart';
import 'package:portfoliodev/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2),
          SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context)? 3: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: defaultPadding,
          ),


        ],
      ),
    );
  }
}
