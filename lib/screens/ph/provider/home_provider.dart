import 'package:flutter/material.dart';
import 'package:pageview_navigation/screens/home/view/home_screen.dart';
import 'package:pageview_navigation/screens/profile/view/profile_screen.dart';
import 'package:pageview_navigation/screens/vedio/view/vedio_screen.dart';

class home_provider extends ChangeNotifier
{
  List l1 = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/15.jpg",
    "assets/images/16.jpg",
    "assets/images/17.jpg",
    "assets/images/18.jpg",
    "assets/images/19.jpg",
    "assets/images/20.jpg"
  ];

  int i=0;

  List Screens = [
    home_screen(),
    vedio_screen(),
    profile_screen(),
  ];

  void changescreen(int value)
  {
    i = value;
    notifyListeners();
  }

}