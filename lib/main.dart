
import 'package:first_flutter_apps/view/login_page.dart';
import 'package:first_flutter_apps/view/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astroflare App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
);
}
}
