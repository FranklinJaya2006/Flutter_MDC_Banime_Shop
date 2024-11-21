import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detail.dart';

class Jual extends StatefulWidget {
  const Jual({super.key});

  @override
  State<Jual> createState() => _JualState();
}

class _JualState extends State<Jual> {
  final List<String> images = [
    'assets/ayaka.jpg',
    'assets/nahida.jpeg',
    'assets/ganyu.jpeg',
    'assets/hutao.webp',
    'assets/emilia.jpeg',
    'assets/gay.jpeg',
  ];

  final List<String> names = [
    'Bantal Peluk Ayaka Genshin Impact',
    'Dakimakura Nahida',
    'Bantal Peluk menemani kesendirian',
    'Bantal Dakimakura Hu Tao Genshin',
    'Bantal Emilia Re:Zero',
    'Bantal laki gay / husbando',
  ];

  final List<String> descriptions = [
    'Rp. 600.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 300.000',
    'Rp. 900.000',
    'Rp. 700.000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Banime Hub"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Code to search for banime
            },
          ),
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              _showSortDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      image: images[index],
                      name: names[index],
                      description: descriptions[index],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: images[index].startsWith('http') // Periksa sumber gambar
                            ? Image.network(
                                images[index],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                images[index],
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        names[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        descriptions[index],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _showSortDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Sort Items"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_upward),
              title: const Text("Sort by Price (Low to High)"),
              onTap: () {
                // Implement sorting logic
                Navigator.pop(context); // Close the dialog
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text("Sort by Price (High to Low)"),
              onTap: () {
                // Implement sorting logic
                Navigator.pop(context); // Close the dialog
              },
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text("Sort by Name"),
              onTap: () {
                // Implement sorting logic
                Navigator.pop(context); // Close the dialog
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
        ],
      );
    },
  );
}

