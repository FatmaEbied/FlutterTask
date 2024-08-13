// import 'package:flutter/material.dart';
// import 'Settings_screen.dart';
// import 'contact_us_screen.dart';
// import 'edit_profile_screen.dart';

// class TestScreen extends StatelessWidget {
//   const TestScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 0,
//           title: Text('My App'),
//           foregroundColor: Colors.white,
//           centerTitle: true,
//           bottom: TabBar(
//             labelColor: Colors.white,
//             // indicator: Colors.white,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.settings),
//                 text: 'Settings',
//               ),
//               Tab(
//                 icon: Icon(Icons.edit),
//                 text: 'Edit Profile',
//               ),
//               Tab(
//                 icon: Icon(Icons.contact_mail),
//                 text: 'Contact Us',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Settings_screen(),
//             edit_profile_screen(),
//             contact_us_screen(),
//           ],
//         ),
//       ),
//     );
//   }
// }

    



















import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'Settings_screen.dart';
// import 'contact_us_screen.dart';
// import 'edit_profile_screen.dart';
import 'home_screen.dart';
import 'category_screen.dart';
import 'search_screen.dart';
import 'wish_list_screen.dart';
import 'profile_screen.dart';
class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    homeScreen(),
    CategoryScreen(),
    SearchScreen(),
    WishListScreen(),
    ProfileScreen(),
    // Settings_screen(),
    // edit_profile_screen(),
    // contact_us_screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        selectedItemColor:  Color.fromARGB(255, 102, 51, 204), // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wish List',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
