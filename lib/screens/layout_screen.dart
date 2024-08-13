import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  counterNum++;
                });
                print(counterNum);
              },
              icon: Icon(Icons.add),
            ),
            Text(
              "$counterNum",
              style: TextStyle(fontSize: 24), 
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  counterNum--;
                });
                print(counterNum);
              },
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
