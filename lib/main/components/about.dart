import 'package:flutter/material.dart';
import 'package:portfoliodev/responsive.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Responsive.isDesktop(context))?Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.network("assets/coding3.gif", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text('ABOUT ',style: TextStyle(color: Color(0xFFADEFD1),fontWeight: FontWeight.bold,fontSize: 50),),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Text(
                    textAlign: TextAlign.end,

                      'I am a passionate Application Developer  having expertise in mobile app development '
                          'using flutter and extending my work towards django for api development to build'
                          ' seamless cross-platform experiences.I did my schooling at Mayur Public School and  '
                          'pursued B.Tech (Computer Science) degree at IPEC with 8.6 CGPA. I have always'
                          ' kept myself busy with participation in technical events like 24hrs Hackathons ,'
                          'hactoberfest and contributing towards the projects as u can check out my GitHub profile.',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    softWrap: true,
                  ),
                )
              ],
            ),
          ),


        ],
      ):          Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Text('ABOUT ',style: TextStyle(color: Color(0xFFADEFD1),fontWeight: FontWeight.bold,fontSize: 40),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(

                'I am a passionate Application Developer  having expertise in mobile app development '
                    'using flutter and extending my work towards django for api development to build'
                    ' seamless cross-platform experiences.I did my schooling at Mayur Public School and  '
                    'pursued B.Tech (Computer Science)degree at IPEC with 8.6 CGPA. I have always'
                    ' kept myself busy with participation in technical events like 24hrs Hackathons ,'
                    'hactoberfest and contributing towards the projects as u can check out my GitHub profile.',
                style: TextStyle(color: Colors.white,fontSize: 15),
                softWrap: true,
              ),
            )
          ],
        ),
      )
        ,
    );
  }
}
