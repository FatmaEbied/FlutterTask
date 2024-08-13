import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {
              // Define the action for the add button here
            },
          ),
        ],
        title: Text(
          'My Cards',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Your Payment Cards', style: TextStyle(color: Colors.grey , fontSize: 20)),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CjsaqltEBQxkJVp80u_E2pUOJmR75K4vLOjseI92g37uplRjZMxE5GsuXH48XagUiyc&usqp=CAU',
              width: 300,
              
              // height: 200,
            ),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLoX0UzN4KyNsgG84EsFRUVR1QA9PPXdH2Xci3tO-Er_qyA35Q8qr07lMEN3c4S1G7ByQ&usqp=CAU',
              width: 300,
              //  height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
