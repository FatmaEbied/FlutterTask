import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flag/flag.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading:
            const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
        title: const Text(
          'Language',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Text('Select a Language',
                style: TextStyle(
                   // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            SizedBox(height: 15),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'English',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'French',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'German',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'Chinese',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'Japanese',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 60.0, // Set the fixed height here
                  child: Row(
                    children: [
                      SizedBox(width: 16), // Add some padding
                      // put flag here
                      SizedBox(width: 16), // Add some spacing
                      Expanded(
                        child: Text(
                          'Turkish',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
