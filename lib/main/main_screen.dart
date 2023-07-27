import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/main/components/side_menu.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfoliodev/responsive.dart';
import 'package:portfoliodev/screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context)? null: AppBar(
        backgroundColor: bgColor,
        leading:Builder(
          builder:(context)=> IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },icon:Icon(Icons.menu),
        ),),
      ),
      drawer: SideMenu(),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(children:[
                  for(int i=0;i<children.length;i++)
                    children[i],],
                ),

                ),
              ),

          ],
        ),
      ),
    );
  }
}
