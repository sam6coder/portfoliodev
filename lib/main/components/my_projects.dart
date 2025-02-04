import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfoliodev/responsive.dart';
import 'project_Card.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/models/project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
// print("desktop ${Responsive.isDesktop(context)}");
// print("tablet ${Responsive.isTablet(context)}");
// print("Mobile large ${Responsive.isMobileLarge(context)}");
// print("Mobile ${Responsive.isMobile(context)}");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:40),
          child: Center(
            child: Text(
                "My Projects",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(mobile: ProjectGridView(crossAxisCount: 1,
          childAspectRatio: 2,),
            mobileLarge: ProjectGridView(crossAxisCount: 2,childAspectRatio: 1.8
            ),
            tablet:ProjectGridView(childAspectRatio: 1.7,crossAxisCount: 2),
            desktop: ProjectGridView(crossAxisCount: 3,childAspectRatio: 1.0,)),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget{
  const ProjectGridView({
    Key? key,
    required this.crossAxisCount,
    required this.childAspectRatio
  }): super(key:key);

  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context){
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );


  }


}