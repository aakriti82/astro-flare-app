import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AstroFlare"),
        backgroundColor: const Color.fromARGB(255, 94, 28, 89),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Settings action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Welcome Banner
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 94, 28, 89),
                  const Color.fromARGB(255, 172, 103, 155),
                ],
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/user_avatar.png'), // Replace with your asset
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, [Username]",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome to AstroFlare!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 20),

          // Features Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildFeatureTile(
                    icon: Icons.favorite,
                    color: Colors.pink,
                    label: "Matches",
                    onTap: () {
                      // Navigate to Matches
                    },
                  ),
                  _buildFeatureTile(
                    icon: Icons.message,
                    color: Colors.blue,
                    label: "Chats",
                    onTap: () {
                      // Navigate to Chats
                    },
                  ),
                  _buildFeatureTile(
                    icon: Icons.event,
                    color: Colors.green,
                    label: "Events",
                    onTap: () {
                      // Navigate to Events
                    },
                  ),
                  _buildFeatureTile(
                    icon: Icons.star,
                    color: const Color.fromARGB(255, 108, 150, 44),
                    label: "Horoscope",
                    onTap: () {
                      // Navigate to Horoscope
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureTile({
    required IconData icon,
    required Color color,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
              size: 40,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
