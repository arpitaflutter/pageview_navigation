import 'package:flutter/material.dart';
import 'package:pageview_navigation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../ph/provider/home_provider.dart';

class photo_screen extends StatefulWidget {
  const photo_screen({Key? key}) : super(key: key);

  @override
  State<photo_screen> createState() => _photo_screenState();
}

class _photo_screenState extends State<photo_screen> {
  home_provider? h,ht;
  @override
  Widget build(BuildContext context) {
    h = Provider.of<home_provider>(context,listen: false);
    ht = Provider.of<home_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Gallery"),
        //   backgroundColor: Colors.lightBlueAccent,
        // ),
        body: ht!.Screens[ht!.i],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            h!.changescreen(value);
          },
          currentIndex: Provider.of<home_provider>(context, listen: false).i,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.videocam), label: "Vedio"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}



