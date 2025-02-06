import 'package:flutter/material.dart';

import '../../responsive.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10,top: 20),
      child: Container(
        child: Column(
          children: [
            Text(
              'EXPERIENCE',
              style: TextStyle(
                  fontSize: (Responsive.isDesktop(context)) ? 50 : 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFADEFD1)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: (Responsive.isDesktop(context))
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Intern, KPMG INDIA',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  (Responsive.isDesktop(context)) ? 30 : 15),
                        ),
                        Text(
                          '(MAR 2024- SEP 2024),\n Gurugram ,Haryana',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  (Responsive.isDesktop(context)) ? 20 : 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        style: TextStyle(color: Colors.white,fontSize: (Responsive.isDesktop(context))?20:10),
                        softWrap: true,
                        '* Developed cross-platform mobile applications using Flutter and Dart for both Android and iOS platforms.\n'
                            '* Integrated RESTful APIs provided by backend teams to fetch and display data in the mobile app. \n'
                            '* Parsed and processed JSON responses from APIs to render dynamic content in the app UI'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Analyst, Adecco (KPMG INDIA)',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              (Responsive.isDesktop(context)) ? 30 : 15),
                        ),
                        Text(
                          '(SEP 2024- PRESENT),\n Gurugram ,Haryana',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                              (Responsive.isDesktop(context)) ? 20 : 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        style: TextStyle(color: Colors.white,fontSize: (Responsive.isDesktop(context))?20:10),
                        softWrap: true,
                        '* Integrated multiple RESTful APIs, handled data parsing and processing of JSON  responses to display real-time data within the app'
                        '\n* Collaborated with backend teams to align on API functionalities and ensure seamless integration with the mobile apps.'
                    '\n* Design and build robust, scalable, and secure web applications using the Django framework, ensuring high performance and responsiveness. '),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
