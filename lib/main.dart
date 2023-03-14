import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pageview_navigation/screens/change/change_screen.dart';
import 'package:pageview_navigation/screens/home/provider/home_provider.dart';
import 'package:pageview_navigation/screens/home/view/home_screen.dart';
import 'package:pageview_navigation/screens/ph/provider/home_provider.dart';
import 'package:pageview_navigation/screens/ph/view/ph_screen.dart';
import 'package:pageview_navigation/screens/photo/view/photo_screen.dart';
import 'package:pageview_navigation/screens/profile/view/profile_screen.dart';
import 'package:pageview_navigation/screens/vedio/view/vedio_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'profile',
        routes: {
          '/': (context) => photo_screen(),
          'home':(context) => home_screen(),
          'ph':(context) => ph_screen(),
          'vedio':(context) => vedio_screen(),
          'profile':(context) => profile_screen(),
          // 'navigation':(context) => navigation_screen(),
        },
      ),
    ),
  );
}