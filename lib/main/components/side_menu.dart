import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/coding.dart';
import 'package:portfoliodev/main/components/my_info.dart';
import 'package:portfoliodev/components/animated_progress.dart';
import 'package:portfoliodev/main/components/side_menu.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'webview.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
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

    return Drawer(
        child: Column(
      children: [
        MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: "Residence",
                  text: "India",
                ),
                AreaInfoText(
                  title: "City",
                  text: "New Delhi",
                ),
                AreaInfoText(
                  title: "Age",
                  text: "22",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Knowledge",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color),
                        ),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        Icon(
                          CupertinoIcons.arrow_down,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(children: [
                        IconButton(
                            onPressed: () {
                              // Navigator.pop(context);
                              launchUrlSiteBrowser(
                                  url:
                                      'https://www.linkedin.com/in/sanskriti-mamgain-8b7ba1213/',
                                  pageTitle: 'LinkedIn');
                            },
                            icon: Image.network(
                              "assets/linkedin.png",
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
                              "assets/instagram.png",
                              height: 50,
                            )),
                        IconButton(
                            onPressed: () {
                              // Navigator.pop(context);
                              launchUrlSiteBrowser(
                                  url:
                                  'https://github.com/sam6coder',
                                  pageTitle: 'Github');
                            },
                            icon: Image.network(
                              "assets/github.png",
                              height: 50,
                            )),
                      ])),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title!,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          text!,
        )
      ]),
    );
  }
}
