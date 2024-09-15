import 'package:flutter/material.dart';


class Project{
  final String? title,description;

  Project({this.title,this.description});

}

List<Project> demo_projects=[
    Project(
      title:"E-Commerce Complete admin project - Flutter UI",
      description: "Groceasy is a Flutter based Food Allergens app developed on the theme of Artifical Intelligence. The objective is to filter "
          "out allergens making it easy and safe for users to order grocery products. OpenCV Python model has been used to detect allergens."
    ),
  Project(
    title:"Text Recognition App",
        description: "This project covers implementation of text recognition in flutter using Google ML kit. In this project, text recognition is implemented by selecting image from gallery & camera."
  ),
  Project(
    title:"Weather- Forecasting App",
    description: "Weather App gives basic weather forecast information of different cities. This weather app is one of best free weather apps with full features: Local weather, weather map (weather map service) and weather widgets. See current and forecasted weather with a smart layout that updates as conditions change."
  ),
  Project(
      title:"Smart Attendance App Using Face Recogition",
      description: "The App records attendance by scanning the face of each student and comparing it with already registered student . The Smart Attendance App is built with Flutter and Amazon Rekognition to revolutionize attendance management by combining the ease of mobile technology with the precision of facial recognition."
  ),Project(
      title:"My Personal Blog",
      description: "Blog describes my trips to different parts of India and passion as a developer. I am looking forward to develop more django projects and achieve proficiency so that I can call myself a full stack developer."
  ),


];
