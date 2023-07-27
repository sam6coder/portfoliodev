import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/coding.dart';
import 'package:portfoliodev/main/components/my_info.dart';
import 'package:portfoliodev/components/animated_progress.dart';
import 'package:portfoliodev/main/components/side_menu.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  text: "21",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Knowledge",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children:[
                        Text("Download CV",style:TextStyle(
                          color:Theme.of(context).textTheme.bodyText1!.color
                        ),
                          ),
                        SizedBox(
                          width:defaultPadding/2,
                        ),
                        Icon(
                          CupertinoIcons.arrow_down,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top:defaultPadding),
                  color:Color(0xFF24242E),
                  child:Row(
                    children:[
                      Spacer(),
                      IconButton(onPressed: (){},
                          icon:Image.network("assets/linkedin.png") ),
                      IconButton(onPressed: (){},
                          icon:Image.network("assets/fb.png") ),

                      IconButton(onPressed: (){},
                          icon:Image.network("assets/twitter.png") ),
                      IconButton(onPressed: (){},
                          icon:Image.network("assets/insta.jpeg") ),
                      Spacer(),
                    ]
                  )
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
