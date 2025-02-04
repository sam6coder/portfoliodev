import 'package:flutter/material.dart';
import "dart:convert";
import "package:http/http.dart" as http;
import 'dart:io';

class Project{
  final String? title,description,gitLink;

  Project({this.title,this.description,this.gitLink});

  factory Project.fromJson(Map<String,dynamic> json){
    return Project(
        title:json['name'],
        description: json['description'],
        gitLink: json['gitLink']
    );
  }

}

Future<List<Project>> fetchProjects() async{
  const String url="https://portfoliodev-backend.onrender.com/";

  try{
    Uri uri=Uri.parse(url);
    final response=await http.get(uri);
    if(response.statusCode==200){
      List<dynamic> jsonData=json.decode(response.body);
      List<Project> obj=jsonData.map<Project>((json) =>
          Project.fromJson(json)).toList();

      return jsonData.map<Project>((json) =>
          Project.fromJson(json)).toList();

    }else{
      throw Exception('Failed to load projects: ${response.statusCode}');
    }



  }catch(e){
    throw Exception('Error fetching projects: $e');
  }
}

List<Project> demo_projects=[
  Project(
      title:"Instagram Clone",
      description: "An Instagram clone built using Flutter and Firebase replicates core functionalities of the Instagram. It features user authentication , photo/video uploading, and dynamic post interactions such as likes and comments. Users can create and customize profiles, follow/unfollow others, and view personalized feeds.",
      gitLink: "https://github.com/sam6coder/instagram-clone"
  ),
  Project(
      title:"Examination Platform for University Students",
      description: "Brain Brawl provides a 1-on-1 learning experience in knockout series form, whereas, when you start a game you are matched with a player who also joined under the same subject as you did, and from there you both get to battle each other by answering assessments that require both accuracy and speed to win. Winners will rise on the leaderboard .",
      gitLink: "https://github.com/sam6coder/BrainBrawl-Frontend"
  ),
  Project(
      title:"Smart Attendance App Using Face Recognition",
      description: "The Smart Attendance App records attendance by scanning the face of each student and comparing it with already registered student . It is built with Flutter and Amazon Rekognition to revolutionize attendance management.",
      gitLink: "https://github.com/sam6coder/smartattendance"
  ),
  Project(
    title:"E-Commerce Backend Using Django",
    description: "E-Commerce Backend built using Django is  an online shopping platform. It includes features such as user authentication and management, allowing users to register, log in and logout. The system enables admins to create and organize products into categories . A shopping cart functionality is available, allowing users to add products before checkout. ",
    gitLink: "https://github.com/sam6coder/ecommerce-backend",


  ),
  Project(
      title: "Todo Backend using Django",
      description: "This is a django Todo app deployed on render . Users can put their todo activities with description , date time and chose option if its done or not.",
      gitLink: "https://github.com/sam6coder/todo-backend"
  ),


  Project(
      title:"Text Recognition App",
      description: "This project covers implementation of text recognition in flutter using Google ML kit. In this project, text recognition is implemented by selecting image from gallery & camera.",
      gitLink:"https://github.com/sam6coder/text-recognition-app"
  ),

  Project(
      title:"Weather- Forecasting App",
      description: "Weather App gives basic weather forecast information of different cities. This weather app is one of best free weather apps with full features: Local weather, weather map (weather map service) and weather widgets. See current and forecasted weather with a smart layout that updates as conditions change.",
      gitLink: "https://github.com/sam6coder/weather_app"
  ),


];
