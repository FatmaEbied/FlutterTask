import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class SettingScreen extends StatelessWidget {
  // Create a ValueNotifier to hold the switch state
  final ValueNotifier<bool> isSwitched = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          title: const Text(
            'Settings',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          centerTitle: true,
        ),
        
        body: Column(
          children: [
            
            Card(
              
              elevation: 5,
              margin: EdgeInsets.all(8),
              child: SwitchListTile(
                title: Text(
                    'Push Notifications                                      On/Off'),
                value: isSwitched.value,
                onChanged: (bool value) {
                  isSwitched.value = value;
                },
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(8),
              child: SwitchListTile(
                title: Text(
                    'Theme                                                    Light/Dark'),
                value: isSwitched.value,
                onChanged: (bool value) {
                  isSwitched.value = value;
                },
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Language                                                              English'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
