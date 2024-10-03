import 'package:flutter/material.dart';

class LoginPage1 extends StatelessWidget {
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
                    backgroundImage: AssetImage('assets/images/passenger.png'), // You can replace this with your own image asset
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Login Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // Email TextField
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'demo@gmail.com',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  // Forgot Password and Remember Me Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          const Text("Remember Me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/password reset'); // Navigate to password reset screen
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Login Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Login', style: TextStyle(fontSize: 18)),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Social Media Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Google login action
                        },
                        icon: const Icon(Icons.g_mobiledata, size: 40), // Google icon (for simplicity)
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          // Facebook login action
                        },
                        icon: const Icon(Icons.facebook, size: 40), // Facebook icon (for simplicity)
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Sign up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an Account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign up'); // Navigate to sign-up screen
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
