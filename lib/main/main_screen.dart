import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/side_menu.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfoliodev/responsive.dart';
import 'package:portfoliodev/screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen(
      {Key? key,
      required this.children,
      required this.scrollAbout,
      required this.scrollContact,
      required this.scrollExperience,
      required this.scrollProject,
      required this.scrollSkills})
      : super(key: key);

  final List<Widget> children;
  final VoidCallback scrollAbout;
  final VoidCallback scrollSkills;
  final VoidCallback scrollContact;
  final VoidCallback scrollExperience;
  final VoidCallback scrollProject;

// final GlobalKey homeKey = GlobalKey();

  Widget _buildMenuItem(String title, scroll) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 30),
      child: TextButton(
          onPressed: scroll,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                backgroundColor: Color(0xFF124E66),
                automaticallyImplyLeading: false,
                actions: [
                  _buildMenuItem('About', scrollAbout),
                  _buildMenuItem('Skills', scrollSkills),
                  _buildMenuItem('Projects', scrollProject),
                  _buildMenuItem('Experience', scrollExperience),
                  _buildMenuItem('Contact', scrollContact),

                ],
              ),
            )
          : AppBar(
              backgroundColor: Color(0xFF124E66),
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(scrollAbout: scrollAbout,scrollSkills: scrollSkills,scrollProject: scrollProject,scrollExperience: scrollExperience,scrollContact: scrollContact,),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // if (Responsive.isDesktop(context))
            //   Expanded(
            //     flex: 2,
            //     child: SideMenu(),
            //   ),
            // SizedBox(
            //   width: defaultPadding,
            // ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < children.length; i++) children[i],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
