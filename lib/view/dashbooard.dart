import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/logo.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              'Welcome to the Dashboard',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }
}