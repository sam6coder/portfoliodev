import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/my_info.dart';
import 'package:portfoliodev/components/animated_progress.dart';
import 'package:portfoliodev/main/components/side_menu.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'webview.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
    required this.scrollAbout,
    required this.scrollContact,
    required this.scrollExperience,
    required this.scrollProject,
    required this.scrollSkills
  }) : super(key: key);

  final VoidCallback scrollAbout;
  final VoidCallback scrollSkills;
  final VoidCallback scrollContact;
  final VoidCallback scrollExperience;
  final VoidCallback scrollProject;


  @override
  Widget build(BuildContext context) {
    Widget _buildMenuItem(String title, scroll) {
      return Padding(
        padding: const EdgeInsets.all(15),
        child: TextButton(
            onPressed:(){ Navigator.pop(context);scroll();},
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
      );
    }

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
      backgroundColor: secondaryColor,
        child: Column(
      children: [
        MyInfo(),

        _buildMenuItem('About', scrollAbout),
        _buildMenuItem('Skills', scrollSkills),
        _buildMenuItem('Projects', scrollProject),
        _buildMenuItem('Experience', scrollExperience),
        _buildMenuItem('Contact', scrollContact),


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
