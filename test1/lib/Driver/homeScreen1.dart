import 'package:flutter/material.dart';
import 'homeScreen2.dart'; // Import the second screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen1(),
    );
  }
}

class homeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Bus Image with Curved Border
          Container(
            padding: const EdgeInsets.symmetric(vertical:0.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
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
          const SizedBox(height: 10),
          const Text(
            'Please select the correct option to move forward',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Eqal space  betewenn children
            children: [
              // Driver Option with Border
              GestureDetector(
                onTap: () {
                  // Handle driver selection
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange, // Border color
                          width: 3, // Border width
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                            'assets/images/driver.png'), // replace with your asset path
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Driver',
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                    ),
                  ],
                ),
              ),
              // Passenger Option with Border
              GestureDetector(
                onTap: () {
                  // Handle passenger selection
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange, // Border color
                          width: 3, // Border width
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                            'assets/images/passenger.png'), // replace with your asset path
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Passenger',
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                      
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Navigate to the second screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homeScreen2()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.orange, // Corrected property
            ),
          ),
        ],
      ),
    );
  }
  

}
