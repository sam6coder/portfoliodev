import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/components/animated_progress.dart';
import 'package:portfoliodev/main/components/webview.dart';
import 'package:url_launcher/url_launcher.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Column(
          children: [
            Row(
              children:[ IconButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    launchUrlSiteBrowser(
                        url:
                        'https://www.instagram.com/',
                        pageTitle: 'Instagram');
                  },
                  icon: Image.network(
                    "assets/flutter.png",
                    height: 50,
                  )),
                IconButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      launchUrlSiteBrowser(
                          url:
                          'https://www.instagram.com/',
                          pageTitle: 'Instagram');
                    },
                    icon: Image.network(
                      "assets/django.png",
                      height: 50,
                    )),],),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          launchUrlSiteBrowser(
                              url:
                              'https://www.instagram.com/',
                              pageTitle: 'Instagram');
                        },
                        icon: Image.network(
                          "assets/c++.png",
                          height: 50,
                        )),
                    IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          launchUrlSiteBrowser(
                              url:
                              'https://www.instagram.com/',
                              pageTitle: 'Instagram');
                        },
                        icon: Image.network(
                          "assets/python.png",
                          height: 50,
                        )),
                  ],
                ),

                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          launchUrlSiteBrowser(
                              url:
                              'https://www.instagram.com/',
                              pageTitle: 'Instagram');
                        },
                        icon: Image.network(
                          "assets/sql.png",
                          height: 50,
                        )),
                  
            ],),
          ],
        ),

      ],
    );
  }
}
