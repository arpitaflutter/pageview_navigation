import 'package:flutter/material.dart';
import 'package:pageview_navigation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class ph_screen extends StatefulWidget {
  const ph_screen({Key? key}) : super(key: key);

  @override
  State<ph_screen> createState() => _ph_screenState();
}

class _ph_screenState extends State<ph_screen> {
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(itemBuilder: (context, index) => Container(
          height: 100,width: 100,
          child: Image.asset(Provider.of<home_provider>(context,listen: true).l1[index],),
        ),
          itemCount: Provider.of<home_provider>(context,listen: true).l1.length,
          controller: PageController(initialPage: index),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
