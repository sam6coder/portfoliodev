import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:portfoliodev/main/components/webview.dart';
import 'package:portfoliodev/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});





  @override
  Widget build(BuildContext context) {
    Future<void> launchUrlSiteBrowser({
      required String url,
      required String pageTitle,
    }) async {
      final Uri urlParsed = Uri.parse(url);

      if (await canLaunchUrl(urlParsed)) {
        await launchUrl(urlParsed, mode: LaunchMode.externalApplication);
      } else {
        print("error launching url");
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => WebViewBodyLoad(
                pageTitle: pageTitle,
                pageUrl: url,
                headerFooterRequired: true,
              )),
        );
      }
    }
    final Map<String, HighlightedWord> highlights = {
      'Inderprastha Engineering College': HighlightedWord(
        onTap: () => launchUrlSiteBrowser(url: 'https://www.ipec.org.in/', pageTitle: 'Inderprastha Engineering College'),
        textStyle: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize:(Responsive.isDesktop(context))? 20:15
        ),
      ),
      'Mayur Public School': HighlightedWord(
        onTap: () => launchUrlSiteBrowser(url: 'https://mayurpublicschool.com/', pageTitle: 'Mayur Public School'),
        textStyle: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
            fontSize:(Responsive.isDesktop(context))? 20:15
        ),
      ),
    'Flutter': HighlightedWord(
    onTap: () =>  launchUrlSiteBrowser(url: 'https://flutter.dev/', pageTitle: 'Flutter'),
      textStyle: TextStyle(
    color: Colors.yellow,
    fontWeight: FontWeight.bold,
    fontSize:(Responsive.isDesktop(context))? 20:15
    ),
    ),
    'Dart': HighlightedWord(
    onTap: () =>launchUrlSiteBrowser(url: 'https://dart.dev/', pageTitle: 'Dart'),
    textStyle: TextStyle(
    color: Colors.yellow,
    fontWeight: FontWeight.bold,
    fontSize:(Responsive.isDesktop(context))? 20:15
    ),
    ),
      'C,C++': HighlightedWord(
        onTap: () => launchUrlSiteBrowser(url: 'https://devdocs.io/cpp/', pageTitle: 'C/C++'),
        textStyle: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontSize:(Responsive.isDesktop(context))? 20:15
        ),
      ),'Python': HighlightedWord(
        onTap: () =>launchUrlSiteBrowser(url: 'https://www.python.org/', pageTitle: 'Python'),
        textStyle: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontSize:(Responsive.isDesktop(context))? 20:15
        ),
      ),
    };
    return Container(
      child: (Responsive.isDesktop(context))
          ? Row(
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
                        child: Text(
                          'ABOUT ',
                          style: TextStyle(
                              color: Color(0xFFADEFD1),
                              fontWeight: FontWeight.bold,
                              fontSize: (Responsive.isDesktop(context))?50:40),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: TextHighlight(
                        textAlign: TextAlign.end,
                            softWrap: true,
                            text: 'I am a passionate Application Developer  having expertise in mobile app development '
                            'using Flutter and extending my work towards django for api development to build'
                            ' seamless cross-platform experiences.I did my schooling at Mayur Public School and  '
                            'pursued B.Tech (Computer Science) degree at Inderprastha Engineering College with 8.6 CGPA. '
                            'Throughout my academic journey, I have had the opportunity to delve into a diverse range of'
                            ' computer science disciplines, including programming languages like C,C++,Flutter,Python , Dart.I have always'
                            ' kept myself busy with participation in technical events like 24hrs Hackathons ,'
                            'hactoberfest and contributing towards the projects as u can check out my GitHub profile.', words: highlights,
                        textStyle: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                      // Container(
                      //   width: MediaQuery.of(context).size.width*0.5,
                      //   child: Text(
                      //     textAlign: TextAlign.end,
                      //
                      //     'I am a passionate Application Developer  having expertise in mobile app development '
                      //         'using Flutter and extending my work towards django for api development to build'
                      //         ' seamless cross-platform experiences.I did my schooling at Mayur Public School and  '
                      //         'pursued B.Tech (Computer Science) degree at Inderprastha Engineering College with 8.6 CGPA. '
                      //         'Throughout my academic journey, I have had the opportunity to delve into a diverse range of'
                      //         ' computer science disciplines, including programming languages like C,C++,Flutter,Python , Dart.I have always'
                      //         ' kept myself busy with participation in technical events like 24hrs Hackathons ,'
                      //         'hactoberfest and contributing towards the projects as u can check out my GitHub profile.',
                      //     style: TextStyle(color: Colors.white,fontSize: 20),
                      //     softWrap: true,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'ABOUT ',
                      style: TextStyle(
                          color: Color(0xFFADEFD1),
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width*0.5,
                    child: TextHighlight(

                      softWrap: true,
                      text: 'I am a passionate Application Developer  having expertise in mobile app development '
                          'using Flutter and extending my work towards django for api development to build'
                          ' seamless cross-platform experiences.I did my schooling at Mayur Public School and  '
                          'pursued B.Tech (Computer Science) degree at Inderprastha Engineering College with 8.6 CGPA. '
                          'Throughout my academic journey, I have had the opportunity to delve into a diverse range of'
                          ' computer science disciplines, including programming languages like C,C++,Flutter,Python , Dart.I have always'
                          ' kept myself busy with participation in technical events like 24hrs Hackathons ,'
                          'hactoberfest and contributing towards the projects as u can check out my GitHub profile.', words: highlights,
                      textStyle: TextStyle(color: Colors.white,fontSize: 15),),
                  )
                ],
              ),
            ),
    );
  }
}
