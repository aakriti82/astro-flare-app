// import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:first_flutter_apps/view/login_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginView());
  }
}
