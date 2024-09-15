import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget{
  const MyInfo({
    Key? key,
}): super(key: key);

  @override
  Widget build(BuildContext context){
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
            color: Color(0xFF242430),
            child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: [
                  Spacer(flex: 2),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                    AssetImage("assets/profile.jpg"),
                  ),
                  Text(
                    "Sanskriti Mamgain",
                    style:
                    Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    "Flutter Developer ",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        height: 1.5),
                  ),
                  Text(
                    "Intern at KPMG",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        height: 1.5),
                  ),
                  Spacer(flex:2),
                ],),),);
  }
}