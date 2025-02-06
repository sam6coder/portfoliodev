import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/about.dart';
import 'package:portfoliodev/main/components/contact.dart';
import 'package:portfoliodev/main/components/experience.dart';
import 'package:portfoliodev/main/components/skills.dart';
import 'package:portfoliodev/main/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfoliodev/models/project.dart';
import 'package:portfoliodev/main/components/project_Card.dart';
import 'package:portfoliodev/main/components/my_projects.dart';
import 'package:portfoliodev/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey aboutKey = GlobalKey();

  final GlobalKey skillsKey = GlobalKey();

  final GlobalKey contactKey = GlobalKey();

  final GlobalKey experienceKey = GlobalKey();

  final GlobalKey projectKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500), // Smooth scrolling
      curve: Curves.easeInOut, // Smooth animation
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return MainScreen(
      scrollAbout: () => _scrollToSection(aboutKey),
      scrollContact: () => _scrollToSection(contactKey),
      scrollExperience: () => _scrollToSection(experienceKey),
      scrollProject: () => _scrollToSection(projectKey),
      scrollSkills: () => _scrollToSection(skillsKey),
      children: [
        AspectRatio(
          aspectRatio:(Responsive.isDesktop(context))?4: 2,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network("assets/coding.jpg", fit: BoxFit.cover),
              Container(
                color: darkColor.withOpacity(0.66),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I am Sanskriti Mamgain!",
                          style: MediaQuery.of(context).size.width >= 700
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  )
                              : Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                        ),

                        const SizedBox(height: defaultPadding / 2),

                        // Wrapping text container with controlled height

                        SizedBox(
                          height: MediaQuery.of(context).size.width *
                              0.08, // Restricts height to ~2 lines
                          child: OverflowBox(
                            maxHeight: MediaQuery.of(context).size.width *
                                0.08, // Ensures wrapping stops at 2 lines
                            child: DefaultTextStyle(
                              style: Theme.of(context).textTheme.titleMedium!,
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: defaultPadding / 4,
                                runSpacing: defaultPadding / 4,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: "<",
                                      style: (MediaQuery.of(context)
                                                  .size
                                                  .width >=
                                              700)
                                          ? TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.016)
                                          : TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.03),
                                      children: [
                                        TextSpan(
                                          text: "Developer",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: (MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    700)
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.016
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.03,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ">",
                                          style: (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  700)
                                              ? TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.016)
                                              : TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.03),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // ConstrainedBox(
                                  //   constraints: BoxConstraints(
                                  //     maxWidth:
                                  //         MediaQuery.of(context).size.width *
                                  //             0.6,
                                  //   ),
                                  //   child: Text(
                                  //     "I build ",
                                  //     style: (MediaQuery.of(context)
                                  //                 .size
                                  //                 .width >=
                                  //             700)
                                  //         ? TextStyle(
                                  //             fontSize: MediaQuery.of(context)
                                  //                     .size
                                  //                     .width *
                                  //                 0.016)
                                  //         : TextStyle(
                                  //             fontSize: MediaQuery.of(context)
                                  //                     .size
                                  //                     .width *
                                  //                 0.03),
                                  //     softWrap: true,
                                  //     maxLines:
                                  //         2, // Ensures text wraps to only 2 lines
                                  //     overflow: TextOverflow.ellipsis,
                                  //   ),
                                  // ),
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        "I am an aspiring Application Developer",
                                        textStyle: (MediaQuery.of(context)
                                            .size
                                            .width >=
                                            700)
                                            ? TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.016)
                                            : TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.03),
                                        speed: Duration(milliseconds: 60),
                                      ),
                                      TyperAnimatedText(
                                        "I build Responsive Application using Flutter and Django",
                                        textStyle: (MediaQuery.of(context)
                                                    .size
                                                    .width >=
                                                700)
                                            ? TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.016)
                                            : TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.03),
                                        speed: Duration(milliseconds: 60),
                                      ),
                                    ],
                                    isRepeatingAnimation: true,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: "<",
                                      style: (MediaQuery.of(context)
                                                  .size
                                                  .width >=
                                              700)
                                          ? TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.016)
                                          : TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.03),
                                      children: [
                                        TextSpan(
                                          text: "Developer",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: (MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    700)
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.016
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.03,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ">",
                                          style: (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  700)
                                              ? TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.016)
                                              : TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.03),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: defaultPadding),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AboutScreen(
          key: aboutKey,
        ),
        SizedBox(
          height: 20,
        ),
        SkillsScreem(key: skillsKey,),
        SizedBox(
          height: 20,
        ),
        ExperienceScreen(key: experienceKey,),
        SizedBox(
          height: 20,
        ),
        MyProjects(
          key: projectKey,
        ),
        SizedBox(
          height: 20,
        ),
        ContactScreen(key: contactKey,),
        SizedBox(
          height: 100,
        ),
        Text('Designed and Developed by Sanskriti Mamgain',style: TextStyle(color: Colors.white,fontSize:(Responsive.isDesktop(context))?20:10),),
        SizedBox(
          height: 20,
        )

      ],
    );
  }
}
