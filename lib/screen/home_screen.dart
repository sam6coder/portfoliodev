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
    print(MediaQuery.of(context).size.width);
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
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Text(
              //                   "Hi, I am Sanskriti !",
              //                   style: MediaQuery.of(context).size.width>=700?
              //                   Theme.of(context).textTheme.headlineLarge!.copyWith(
              //                         fontWeight: FontWeight.bold,
              //                         color: Colors.white,
              //                     fontSize: MediaQuery.of(context).size.width*0.05
              //                       ):
              //                   Theme.of(context).textTheme.headlineSmall!.copyWith(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white,
              //                   fontSize: MediaQuery.of(context).size.width*0.05)
              //                   // ):Theme.of(context).textTheme.headlineSmall!.copyWith(
              //                   //   fontWeight: FontWeight.bold,
              //                   //   color: Colors.white,
              //                   //   fontSize: 20
              //                   // ),
              //                 ),
              //                   const SizedBox(
              //                     height: defaultPadding/2,
              //                   ),
              //                 DefaultTextStyle(
              //                   style: Theme.of(context).textTheme.titleMedium!,
              //                   child: Wrap(
              //                     alignment: WrapAlignment.center, // Keeps elements aligned properly
              //                     spacing: defaultPadding / 4, // Space between elements
              //                     runSpacing: defaultPadding / 4, // Space between wrapped lines
              //                     children: [
              //                       Text.rich(TextSpan(text: "<",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04), children: [
              //                         TextSpan(
              //                             text: "Flutter",
              //                             style: TextStyle(color: primaryColor,fontSize: MediaQuery.of(context).size.width*0.04)),
              //                         TextSpan(text: ">",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04)),
              //                       ])),
              //                       Text("I build",  style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),
              //                       ),
              //
              //                       AnimatedTextKit(
              //                         animatedTexts: [
              //                           TyperAnimatedText(
              //                             textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),
              //                             "Responsive Application using Flutter and Django",
              //                             speed: Duration(milliseconds: 60),
              //                           ),
              // //                           TyperAnimatedText("",
              // //                           textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),
              // //                               speed: Duration(milliseconds: 60)),
              // //                           TyperAnimatedText("",
              // // textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),
              // //                               speed: Duration(milliseconds: 60)),
              //                         ],
              //                       ),
              //                       Text.rich(TextSpan(text: "<",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04), children: [
              //                         TextSpan(
              //                             text: "Flutter",
              //                             style: TextStyle(color: primaryColor,fontSize: MediaQuery.of(context).size.width*0.04)),
              //                         TextSpan(text: ">",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04),),
              //                       ])),
              //                     ],
              //                   )
              //                   ,
              //                   // child: Row(
              //                   //   children: [
              //                   //     Text.rich(TextSpan(text: "<", children: [
              //                   //       TextSpan(
              //                   //           text: "Flutter",
              //                   //           style: TextStyle(color: primaryColor)),
              //                   //       TextSpan(text: ">"),
              //                   //     ])),
              //                   //     SizedBox(
              //                   //       width: defaultPadding / 2,
              //                   //     ),
              //                   //     Text("I build "),
              //                   //     AnimatedTextKit(
              //                   //       animatedTexts: [
              //                   //         TyperAnimatedText(
              //                   //           "Responsive Web and Mobile App using Flutter",
              //                   //           speed: Duration(milliseconds: 60),
              //                   //         ),
              //                   //         TyperAnimatedText("Complete E-commerce app UI",
              //                   //             speed: Duration(milliseconds: 60)),
              //                   //         TyperAnimatedText("Weather Forecast App",
              //                   //             speed: Duration(milliseconds: 60)),
              //                   //       ],
              //                   //     ),
              //                   //     SizedBox(width: defaultPadding / 2),
              //                   //     Text.rich(TextSpan(text: "<", children: [
              //                   //       TextSpan(
              //                   //           text: "Flutter",
              //                   //           style: TextStyle(color: primaryColor)),
              //                   //       TextSpan(text: ">"),
              //                   //     ])),
              //                   //   ],
              //                   // ),
              //                 ),
              //                 SizedBox(
              //                   height: defaultPadding,
              //                 ),
              //                 // ElevatedButton(
              //                 //   onPressed: () {},
              //                 //   style: TextButton.styleFrom(
              //                 //     padding: EdgeInsets.symmetric(
              //                 //       horizontal: defaultPadding * 2,
              //                 //       vertical: defaultPadding,
              //                 //     ),
              //                 //     backgroundColor: primaryColor,
              //                 //   ),
              //                 //   child: Text("EXPLORE NOW",style: TextStyle(color: Colors.white),),
              //                 // ),
              //               ],
              //             ),
              //           ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Fixed header (won't move)
                        Text(
                          "Hi, I am Sanskriti Mamgain!",
                          style: MediaQuery.of(context).size.width >= 700
                              ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          )
                              : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ),

                        const SizedBox(height: defaultPadding / 2),

                        // Wrapping text container with controlled height
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08, // Restricts height to ~2 lines
                          child: OverflowBox(
                            maxHeight: MediaQuery.of(context).size.width * 0.08, // Ensures wrapping stops at 2 lines
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
                                      style: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                      children: [
                                        TextSpan(
                                          text: "Developer",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: (MediaQuery.of(context).size.width >= 700)?MediaQuery.of(context).size.width * 0.016:MediaQuery.of(context).size.width * 0.03,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ">",
                                          style: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                                    ),
                                    child: Text(
                                      "I build ",
                                      style: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                      softWrap: true,
                                      maxLines: 2, // Ensures text wraps to only 2 lines
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        "Responsive Application using Flutter and Django",
                                        textStyle: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                        speed: Duration(milliseconds: 60),
                                      ),
                                    ],
                                    isRepeatingAnimation: true,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: "<",
                                      style: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                      children: [
                                        TextSpan(
                                          text: "Developer",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: (MediaQuery.of(context).size.width >= 700)?MediaQuery.of(context).size.width * 0.016:MediaQuery.of(context).size.width * 0.03,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ">",
                                          style: (MediaQuery.of(context).size.width >= 700)?TextStyle(fontSize: MediaQuery.of(context).size.width * 0.016):TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
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
        MyProjects(),

      ],
    );
  }
}

