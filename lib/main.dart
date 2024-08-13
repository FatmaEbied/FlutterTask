//import 'package:task2/screens/ex.dart';

// import 'package:task2/screens/category_screen.dart';
// import 'package:task2/screens/home_screen.dart';
// import 'package:task2/screens/profile_screen.dart';
// import 'package:task2/screens/search_screen.dart';
// import 'package:task2/screens/wish_list_screen.dart';
// import 'package:task2/screens/language_screen.dart';
// import 'package:task2/screens/verification_screen.dart';
// import 'package:task2/screens/my_cards_screen.dart';
// import 'package:task2/screens/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:task2/screens/Splash_screen.dart';
import 'package:task2/screens/sign_in_screen.dart';
import 'package:task2/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Splash_screen(),
      initialRoute: "splash",
      routes: {
        "splash": (context) => SplashScreen(),
        "sign_in": (context) => SignInScreen(),
        "home": (context) => homeScreen(),
      },
    );
  }
}

// "Settings": (context) => Settings_screen(),
        // 
        // "edit_profile": (context) => edit_profile_screen(),
        // "contact_us": (context) => contact_us_screen(),

 // theme: ThemeData(
      //     // primarySwatch: Colors.green,
      //     //  primaryColor: Color.fromARGB(255, 102, 51, 204),
      //     //  hintColor: Colors.green
      //     ),

// import 'package:task2/screens/search_screen.dart';
// import 'package:task2/screens/sign_up_screen.dart';
// import 'package:task2/screens/simple.dart';
// import 'package:task2/screens/Settings_screen.dart';
// import 'package:task2/screens/Splash_screen.dart';
// import 'package:task2/screens/contact_us_screen.dart';
// import 'package:task2/screens/edit_profile_screen.dart';
// import 'package:task2/screens/sign_in_screen.dart';

// import 'package:task2/screens/test_screen.dart';

// import 'screens/Splash_screen.dart';
// import 'screens/sign_in_screen.dart';
// import 'screens/Settings_screen.dart';
// import 'screens/edit_profile_screen.dart';
// import 'screens/contact_us_screen.dart';


    
      
    //   home: edit_profile_screen()
    //   home: Settings_screen()
    //   home: sign_in_screen()
    //   home: Splash_screen()
    //   home: contact_us_screen()
    //   Scaffold(
    //     appBar: AppBar(title: const Text('Title')),
    // );
  




















        // body: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Image.network(
        //           'https://cdn-icons-png.flaticon.com/128/2981/2981313.png',
        //           width: 100.0,
        //           height: 100.0,
        //           //fit: BoxFit.cover,
        //         ),
        //         const Text(
        //           'Ecommerce UI theme',
        //           style: TextStyle(
        //             color: Color.fromARGB(255, 46, 44, 158) ,
        //             fontSize: 20,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
