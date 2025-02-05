import 'package:portfoliodev/constants.dart';
import 'package:flutter/material.dart';
import 'package:portfoliodev/main/components/webview.dart';
import 'package:portfoliodev/models/project.dart';
import 'package:portfoliodev/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;



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

    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            project.description!,
            // maxLines: Responsive.isMobileLarge(context)? 3: 4,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          // Spacer(),
          SizedBox(
            height: defaultPadding,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              launchUrlSiteBrowser(url: project.gitLink!, pageTitle: project.gitLink!);
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
                vertical: defaultPadding,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Reduce the roundness here
              ),
              backgroundColor: Color(0xFF00A4CD),
            ),
            child: Text(
              "EXPLORE",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
