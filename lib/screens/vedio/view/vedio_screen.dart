import 'package:flutter/material.dart';
import 'package:pageview_navigation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../ph/provider/home_provider.dart';

class vedio_screen extends StatefulWidget {
  const vedio_screen({Key? key}) : super(key: key);

  @override
  State<vedio_screen> createState() => _vedio_screenState();
}

class _vedio_screenState extends State<vedio_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("vedios"),
          centerTitle: true,
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) => Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              color: Colors.amber,
              child: Image.asset("${Provider.of<home_provider>(context,listen: true).l1[index]}",fit: BoxFit.fill),
            ),
        ),
      ),
    );
  }
}
