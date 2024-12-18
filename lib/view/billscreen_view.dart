import 'package:flutter/material.dart';

class BillScreen extends StatelessWidget {
  final String destination;
  final String date;
  final int passengers;
  final int farePerPassenger;
  final int totalFare;

  const BillScreen({
    Key? key,
    required this.destination,
    required this.date,
    required this.passengers,
    required this.farePerPassenger,
    required this.totalFare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Destination: $destination',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Travel Date: $date', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Number of Passengers: $passengers', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Fare Per Passenger: Rs. $farePerPassenger', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Total Fare: Rs. $totalFare',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
