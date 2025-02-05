import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class SkillsScreem extends StatefulWidget {
  const SkillsScreem({super.key});

  @override
  State<SkillsScreem> createState() => _SkillsScreemState();
}

class _SkillsScreemState extends State<SkillsScreem> {
  List<String> imageUrls = [
    'assets/flutter.png',
    'assets/dart.png',
    'assets/django.png',
    'assets/python.png',
    'assets/c++.png',
    'assets/sql.png',
    'assets/firebase.png',
    'assets/git.png',
    'assets/github.png',
    'assets/docker.png',
    'assets/render.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'SKILLS',
            style: TextStyle(
                color: Color(0xFFADEFD1),
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          // Image.network('assets/c++.png')
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            child: LayoutBuilder(
              builder: (context,constraints) {
                return GridView.builder(
                    itemCount: imageUrls.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 1,
                        maxCrossAxisExtent: 100,
                        // crossAxisCount: (Responsive.isDesktop(context))
                        //     ? 3
                        //     : 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          // color: Color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageUrls[index], // Image URL from list
                            fit: BoxFit
                                .cover, // Ensures it fills the container
                          ),
                        ),
                      );
                    });
              },),
          ),
        ],
      ),
    );
  }
}
