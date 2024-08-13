import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counterr extends StatefulWidget {
  const Counterr({super.key});

  @override
  State<Counterr> createState() => _CounterrState();
}

class _CounterrState extends State<Counterr> {
  int counterNum = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      counterNum = prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> _saveCounter(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  counterNum++;
                });
                _saveCounter(counterNum);
                print(counterNum);
              },
              icon: const Icon(Icons.add),
            ),
            Text(
              "$counterNum",
              style: const TextStyle(fontSize: 24),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  counterNum--;
                });
                _saveCounter(counterNum);
                print(counterNum);
              },
              icon: const Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () async {
                await _saveCounter(1);
                print('Counter set to 1');
              },
              child: const Text("Create"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await _saveCounter(500);
                print('Counter updated to 500');
              },
              child: const Text("Update"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final counterValue = prefs.getInt('counter') ?? 0;
                print('Counter value: $counterValue');
              },
              child: const Text("Get"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.remove('counter');
                print('Counter removed');
                setState(() {
                  counterNum = 0;
                });
              },
              child: const Text("Remove"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                print('All preferences cleared');
                setState(() {
                  counterNum = 0;
                });
              },
              child: const Text("Clear All"),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Counterr extends StatefulWidget {
//   const Counterr({super.key});

//   @override
//   State<Counterr> createState() => _CounterrState();
// }

// class _CounterrState extends State<Counterr> {
  
//   int counterNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   counterNum++;
//                 });
//                 print(counterNum);
//               },
//               icon: Icon(Icons.add),
//             ),
//             Text(
//               "$counterNum",
//               style: TextStyle(fontSize: 24),
//             ),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   counterNum--;
//                 });
//                 print(counterNum);
//               },
//               icon: Icon(Icons.remove),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 var prefs = await SharedPreferences.getInstance();
//                 var counterNum = prefs.setInt("counter",1);
//                 print(counterNum);
//               },
//               child: Text("create"),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () async {
//                 var prefs = await SharedPreferences.getInstance();
//                 var counterNum = prefs.setInt("counter",500);
//                 print(counterNum);
//               },
//               child: Text("Update"),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () async {
//                 var prefs = await SharedPreferences.getInstance();
//                 var counterNum = prefs.getInt("counter");
//                 print(counterNum);
//               },
//               child: Text("Get"),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () async {
//                 var prefs = await SharedPreferences.getInstance();
//                 var counterNum = prefs.remove("counter");
//                 print(counterNum);
//               },
//               child: Text("Remove"),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () async {
//                 var prefs = await SharedPreferences.getInstance();
//                 var counterNum = prefs.getInt("counter");
//                 print(counterNum);
//               },
//               child: Text("Cleat All"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
