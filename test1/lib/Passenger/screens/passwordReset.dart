import 'package:flutter/material.dart';
import 'package:test1/Passenger/screens/login.dart'; // Import the LoginPage1

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top section with avatar and background
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.orange, // Orange color from the image
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/passenger.png'), // Replace with your asset
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Reset Password Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reset Your Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // Email TextField
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'demo@gmail.com',
                      prefixIcon: const Icon(Icons.email_outlined), // Match loginPage1 icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),

                  // New Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'New Password',
                      prefixIcon: const Icon(Icons.lock_outline), // Match loginPage1 icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Confirm Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: const Icon(Icons.lock_outline), // Match loginPage1 icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Password Reset Button
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the login page when button is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage1()), // Navigate to LoginPage1
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text('Password Reset', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
