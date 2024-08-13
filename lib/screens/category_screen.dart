import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // Updated dummy data for categories with two additional entries
  final List<Map<String, dynamic>> categories = [
    {
      'image':
          'https://images.unsplash.com/photo-1498050108023-c5249f4df085?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVza3RvcCUyMGNvbXB1dGVyfGVufDB8fDB8fHww',
      'label': 'Computers'
    },
    {
      'image':
          'https://t3.ftcdn.net/jpg/01/59/74/48/360_F_159744874_MshH8rY3U6RRnUXmHpAGmF31my7hJAtV.jpg',
      'label': 'Phones & Accessories'
    },
    // New categories added
    {
      'image':
          'https://media.istockphoto.com/id/1082558358/photo/different-modern-streamlined-mirror-copper-chandeliers-bubble-metal-copper-shade-pendant.jpg?s=612x612&w=0&k=20&c=VdUYuCKY4bKhSquqqRu2NvuKCf1ja0KIo6YH_7ErV0c=', // Replace with actual image link
      'label': 'Lights & Lighting'
    },
    {
      'image':
          'https://lh3.googleusercontent.com/proxy/SJJDs7aju3TtEMjmQE8PRGQnQQ9TtCyg0SPE-LHJEw_CdFlPdH47rWZXWF9NNZ7AMDo0GYsvMehRKsNI6IjXzEacIO2Et8C6uOZr7mSytvl3b2HOXmTO9VKMM1vvBbOk', // Replace with actual image link
      'label': 'Office Equipments'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar row
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
                            icon: const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 102, 51, 204),
                            ),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Category',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Grid view for categories
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10, // Horizontal space between cards
                  mainAxisSpacing: 10, // Vertical space between cards
                  childAspectRatio: 1, // Aspect ratio of the cards
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(categories[index]['image'],
                            fit: BoxFit.cover),
                        Text(categories[index]['label']),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
