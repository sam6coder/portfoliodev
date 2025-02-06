import 'package:flutter/material.dart';
import 'package:portfoliodev/main/components/webview.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../responsive.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
    void _launchEmail() async {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'sam786wed@gmail.com',
      );
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        print("Could not launch email client.");
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        width: (Responsive.isDesktop(context))?MediaQuery.of(context).size.width*0.4:MediaQuery.of(context).size.width*0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CONNECT WITH ME',style: TextStyle(color: Color(0xFFADEFD1),fontSize: (Responsive.isDesktop(context))?50:40,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 20,
        ),
            Center(
          child: Container(
            width: (Responsive.isDesktop(context))?MediaQuery.of(context).size.width*0.3:MediaQuery.of(context).size.width*0.6,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            GestureDetector(
              onTap:()=> launchUrlSiteBrowser(
                  url:
                  'https://www.linkedin.com/in/sanskriti-mamgain-8b7ba1213/',
                  pageTitle: 'LinkedIn'),
              child: Container(
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
                'assets/linkedin.png',
                height: (Responsive.isDesktop(context))?70:50,// Image URL from list
                fit: BoxFit
                    .cover, // Ensures it fills the container
              ),
                    ),
                  ),
            ),
              SizedBox(
                width: 10,
              ),

              GestureDetector(
                onTap: ()=>launchUrlSiteBrowser(
                    url:
                    'https://www.instagram.com/',
                    pageTitle: 'Instagram'),
                child: Container(
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
                      'assets/instagram.png',
                      height: (Responsive.isDesktop(context))?70:50,// Image URL from list
                      fit: BoxFit
                          .cover, // Ensures it fills the container
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: ()=>launchUrlSiteBrowser(
                    url:
                    'https://github.com/sam6coder',
                    pageTitle: 'Github'),
                child: Container(
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
                      'assets/github.png',
                      height: (Responsive.isDesktop(context))?70:50,// Image URL from list
                      fit: BoxFit
                          .cover, // Ensures it fills the container
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: _launchEmail,
                child: Container(
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
                      "assets/mail.png",
                      height: (Responsive.isDesktop(context))?70:50,// Image URL from list
                      fit: BoxFit
                          .cover, // Ensures it fills the container
                    ),
                  ),
                ),
              ),

                                      ],),
          ),
        ),

          ],
        ),
      ),
    );
  }
}
