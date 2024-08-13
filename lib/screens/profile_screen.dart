import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20.0, // Adjust top positioning as needed
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0), // Space from AppBar
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
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'UserName',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
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
                                Icon(
                                  Icons.person_outline_sharp,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'My Account',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'My Order',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.translate_rounded,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'Language Settings',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'Shipping Address',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.credit_card_rounded,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'My Cards',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.security,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
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
                                Icon(
                                  Icons.privacy_tip_outlined,
                                  size: 30,
                                ),
                                SizedBox(width: 16), // Add some spacing
                                Expanded(
                                  child: Text(
                                    'FAQ',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
