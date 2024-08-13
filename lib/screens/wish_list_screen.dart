import 'package:flutter/material.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  



      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () {},
        // ),
        title: const Text(
          'Wish List',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 102, 51, 204),
                            ),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search product',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0), // Add some spacing between cards

                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.format_align_center_sharp,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // First item card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://imgs.search.brave.com/4AmwDIFMpTDQaNziULAGypmolSZwYt9PAO7YC-arEBk/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMubWFjcnVtb3Jz/LmNvbS90L05IQkRY/cE5wS0NWcVZ4R0ta/ZUx2c1Q2TzdtVT0v/NDAweDAvYXJ0aWNs/ZS1uZXcvMjAyMy8w/OS9pUGhvbmUtMTUt/R2VuZXJhbC1GZWF0/dXJlLVBpbmsuanBn/P2xvc3N5',
                      fit: BoxFit.cover,
                      width: 100, // Fixed width for the image
                      height: 100, // Fixed height for the image
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Iphone 15 pink\n', // Product name
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$1495.00\n', // Price with dollar sign
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.green, // Optional: color for price
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            // Second item card

            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://imgs.search.brave.com/fV66ai84kVNe4MjplSYtZt_nAjm1TrOSzyL8fJoM8T8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzFHbWZBNDNibUwu/anBn',
                      fit: BoxFit.cover,
                      width: 100, // Fixed width for the image
                      height: 100, // Fixed height for the image
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Apple Watch Series 5\n', // Product name
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$755.00\n', // Price with dollar sign
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.green, // Optional: color for price
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            // Third item card

            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://imgs.search.brave.com/iq-rGzRDpg_a0yehmpXzWoP2HLpxP7nyzuxrAdFZkbo/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF3d2dyN0h5OEwu/anBn',
                      fit: BoxFit.cover,
                      width: 100, // Fixed width for the image
                      height: 100, // Fixed height for the image
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AirPods Pro\n', // Product name
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$448.00\n', // Price with dollar sign
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.green, // Optional: color for price
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            // Fourth item card

            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://imgs.search.brave.com/4AmwDIFMpTDQaNziULAGypmolSZwYt9PAO7YC-arEBk/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMubWFjcnVtb3Jz/LmNvbS90L05IQkRY/cE5wS0NWcVZ4R0ta/ZUx2c1Q2TzdtVT0v/NDAweDAvYXJ0aWNs/ZS1uZXcvMjAyMy8w/OS9pUGhvbmUtMTUt/R2VuZXJhbC1GZWF0/dXJlLVBpbmsuanBn/P2xvc3N5',
                      fit: BoxFit.cover,
                      width: 100, // Fixed width for the image
                      height: 100, // Fixed height for the image
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Iphone 15 pink\n', // Product name
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$1200.00\n', // Price with dollar sign
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.green, // Optional: color for price
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            // Fifth item card

            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://imgs.search.brave.com/fV66ai84kVNe4MjplSYtZt_nAjm1TrOSzyL8fJoM8T8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzFHbWZBNDNibUwu/anBn',
                      fit: BoxFit.cover,
                      width: 100, // Fixed width for the image
                      height: 100, // Fixed height for the image
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AirPods Pro\n', // Product name
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$300.00\n', // Price with dollar sign
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.green, // Optional: color for price
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 102, 51, 204),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
