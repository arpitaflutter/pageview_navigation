import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ph/provider/home_provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gallery"),centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'ph', arguments: index);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Image.asset(
                  "${Provider.of<home_provider>(context, listen: true).l1[index]}",
                  fit: BoxFit.fill),
            ),
          ),
          itemCount:
          Provider.of<home_provider>(context, listen: true).l1.length,
        ),
      ),
    );
  }
}
