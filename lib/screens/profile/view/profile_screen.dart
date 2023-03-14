import 'package:flutter/material.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/2.jpg"),radius: 50),
                SizedBox(height: 30,),
                Text("Name: \tArpita Solanki",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 15,),
                Text("Hobby: \tTravelling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 15,),
                Text("Area of interest: \tFlutter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
