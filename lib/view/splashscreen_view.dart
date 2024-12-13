import 'package:flutter/material.dart';
import 'login_view.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  @override
  _SplashscreenViewState createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {
  @override
  void initState() {
    super.initState();
    // Navigate to LoginView after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 103, 155),
      body: Center(
        child: ClipOval(
          child: Image.asset(
            'assets/images/logo.png', // Replace with your image path
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
