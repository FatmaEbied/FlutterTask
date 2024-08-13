import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class edit_profile_screen extends StatelessWidget {
 // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          title: const Text(
            'Edit Profile',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 20.0, // Adjust top positioning as needed
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0), // Space from AppBar
                child: Center(
                  child: Column(
                    // Use Column to organize children vertically
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: Stack(
                          children: [
                            Image.network(
                              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              right: 10.0,
                              bottom: 10.0,
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 440,
                        child: Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none, // Remove borderSide
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255), // Set fillColor here
                              labelText: "Name",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 440,
                        child: Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none, // Remove borderSide
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255), // Set fillColor here
                              labelText: "Email",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 440,
                        child: Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none, // Remove borderSide
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255), // Set fillColor here
                              labelText: "Phone",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 440,
                        child: Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none, // Remove borderSide
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255), // Set fillColor here
                              labelText: "Country",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Center(
                        child: Container(
                          width: 440,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 102, 51, 204),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
