import 'package:flutter/material.dart';
import 'package:test1/Passenger/screens/passwordReset.dart';
import 'package:test1/Passenger/screens/homeScreen1.dart';  // Import HomeScreen1
import 'package:test1/Passenger/screens/homeScreen2.dart'; // Import HomeScreen1
import 'package:test1/Passenger/screens/login.dart';  // Import loginScreen
import 'package:test1/Passenger/screens/signUp.dart';  // Import loginScreen

// Import profile screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',  // Set the initial screen (HomeScreen)
      routes: {
        '/': (context) => WelcomeScreen1(),
        '/welcome': (context) => WelcomeScreen2(),
         '/login': (context) => LoginPage1(),
         '/password reset': (context) =>  PasswordReset(),
         '/sign up': (context) =>  SignUp(),
     
        //'/profile': (context) => ProfileScreen(),
        // Add routes for other screens/interfaces
      },
    );
  }
}

// Your void functions can go here

void handleDriverSelection(BuildContext context) {
  // Perform any logic related to driver selection
  print("Driver selected");
  // Navigate to another screen if needed
  Navigator.pushNamed(context, '/booking');
}

void handlePassengerSelection(BuildContext context) {
  // Perform any logic related to passenger selection
  print("Passenger selected");
  // Navigate to another screen if needed
  Navigator.pushNamed(context, '/profile');
}
