import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class contact_us_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          title: const Text(
            'Contact Us',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0), // Overall padding for alignment
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.deepPurpleAccent,
                    size: 30,
                  ),
                  SizedBox(width: 20), // Horizontal spacing between icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phones',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+201145743356',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueGrey, // Color for the phone number
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30), // Space between the two rows
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.deepPurpleAccent,
                    size: 30,
                  ),
                  SizedBox(width: 20), // Horizontal spacing between icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'fatma44@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueGrey, // Color for the email
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30), // Space before the subject field
              Text('Subject',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
              SizedBox(height: 8),
              Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(8), // Add rounded edges
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your subject here...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Your Message',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
              SizedBox(height: 8),
              Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(15), // Add rounded edges
                child: TextField(
                  maxLines: 5, // Makes it multiline
                  decoration: InputDecoration(
                    hintText: "Type your message here...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
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
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ], // Closing the children list for Column
          ),
        ),
      ),
    );
  }
}
