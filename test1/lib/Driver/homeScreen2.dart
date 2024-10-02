import 'package:flutter/material.dart';
import 'loginPage1.dart';  // Make sure the path is correct


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen2(),
    );
  }
}

class homeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Bus Image with Curved Border
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              child: Image.asset(
                'assets/images/busNew.png', // replace with your asset path
                height: 300,
                width: 600,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          // RootX Logo Section with Background Image
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo-no-background.png'), // replace with your logo asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Navigate to the loginPage1
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginPage1()), // Ensure loginPage1 is defined
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.orange,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
