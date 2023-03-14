// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../home/provider/home_provider.dart';
//
// class change_screen extends StatefulWidget {
//   const change_screen({Key? key}) : super(key: key);
//
//   @override
//   State<change_screen> createState() => _change_screenState();
// }
//
// class _change_screenState extends State<change_screen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Provider.of<home_provider>(context,listen: false).Screens[Provider.of<home_provider>(context,listen: true).i],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: Provider.of<home_provider>(context,listen: false).i,
//           onTap: (value) {
//             Provider.of<home_provider>(context,listen: true).;
//           },
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
//             BottomNavigationBarItem(icon: Icon(Icons.videocam,),label: "Video"),
//             BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile"),
//           ],
//         ),
//       ),
//     );
//   }
// }
