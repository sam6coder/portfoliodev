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


];
