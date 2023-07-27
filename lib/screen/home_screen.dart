import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfoliodev/models/project.dart';
import 'package:portfoliodev/main/components/project_Card.dart';
import 'package:portfoliodev/main/components/my_projects.dart';
import 'package:portfoliodev/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network("assets/coding.jpg", fit: BoxFit.cover),
              Container(
                color: darkColor.withOpacity(0.66),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(!Responsive.isMobileLarge(context))
                    Text(
                      "Hi, I am Sanskriti !",
                      style: Responsive.isDesktop(context)?
                      Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ):
                      Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    if(!Responsive.isMobileLarge(context))
                      const SizedBox(
                        height: defaultPadding/2,
                      ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.subtitle1!,
                      child: Row(
                        children: [
                          if(Responsive.isMobileLarge(context))
                          Text.rich(TextSpan(text: "<", children: [
                            TextSpan(
                                text: "Flutter",
                                style: TextStyle(color: primaryColor)),
                            TextSpan(text: ">"),
                          ])),
                          if(!Responsive.isMobileLarge(context))
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          Text("I build "),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                "Responsive Web and Mobile App using Flutter",
                                speed: Duration(milliseconds: 60),
                              ),
                              TyperAnimatedText("Complete E-commerce app UI",
                                  speed: Duration(milliseconds: 60)),
                              TyperAnimatedText("Weather Forecast App",
                                  speed: Duration(milliseconds: 60)),
                            ],
                          ),
                          if(!Responsive.isMobileLarge(context))
                          SizedBox(width: defaultPadding / 2),
                          if(!Responsive.isMobileLarge(context))
                          Text.rich(TextSpan(text: "<", children: [
                            TextSpan(
                                text: "Flutter",
                                style: TextStyle(color: primaryColor)),
                            TextSpan(text: ">"),
                          ])),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryColor,
                      ),
                      child: Text("EXPLORE NOW"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        MyProjects(),

      ],
    );
  }
}

