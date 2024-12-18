
// import 'package:first_flutter_apps/app.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }


import 'package:first_flutter_apps/view/homescreen_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'homescreen',
      home: HomeScreen(),
    );
  }
}
