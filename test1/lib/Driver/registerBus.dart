import 'package:flutter/material.dart';
import 'signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusRegistration(),
    );
  }
}

class BusRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Register Your Bus',
          style: TextStyle(fontSize: 24), // Increased font size for the title
        ),
        centerTitle: true,
        toolbarHeight: 120, // Increased the height of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // First Name Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Last Name Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // NIC No Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'NIC No',
                prefixIcon: Icon(Icons.credit_card),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // License No Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Licence No',
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Vehicle Number Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Vehicle Number',
                prefixIcon: Icon(Icons.directions_bus),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 70),
            // Register Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement your logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), backgroundColor: Colors.orange, // Button background color
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white), // Set the text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
