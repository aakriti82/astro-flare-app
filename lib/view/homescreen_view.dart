import 'package:first_flutter_apps/view/billscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(BusTicketApp());
}

class BusTicketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aakriti Bus Ticket System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedDestination;
  DateTime? _selectedDate;
  int _passengerCount = 1;
  final Map<String, int> _farePerDestination = {
    'Chitwan': 700,
    'Pokhara': 900,
    'Kathmandu': 1500,
  };

  void _selectDate() async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = now.add(Duration(days: 1));
    final DateTime lastDate = now.add(Duration(days: 7));
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _navigateToBillScreen() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final int fare = _farePerDestination[_selectedDestination]!;
      final int totalFare = fare * _passengerCount;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BillScreen(
            destination: _selectedDestination!,
            date: DateFormat.yMMMd().format(_selectedDate!),
            passengers: _passengerCount,
            farePerPassenger: fare,
            totalFare: totalFare,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aakriti Bus Ticket System'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Select Destination'),
                items: _farePerDestination.keys.map((destination) {
                  return DropdownMenuItem(
                    value: destination,
                    child: Text(destination),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedDestination = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a destination';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Number of Passengers'),
                keyboardType: TextInputType.number,
                initialValue: '1',
                onSaved: (value) {
                  _passengerCount = int.parse(value!);
                },
                validator: (value) {
                  if (value == null || int.tryParse(value) == null || int.parse(value) <= 0) {
                    return 'Please enter a valid number of passengers';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: _selectDate,
                child: Text(_selectedDate == null
                    ? 'Select Travel Date'
                    : 'Selected Date: ${DateFormat.yMMMd().format(_selectedDate!)}'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _navigateToBillScreen,
                child: Text('Proceed to Bill'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
