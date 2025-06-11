import 'package:flutter/material.dart';

class Homepagescreen extends StatelessWidget {
  const Homepagescreen({super.key});
  final List<Map<String, dynamic>> products = const [
    {"name": "Lenovo", "price": "65,000 rs", "image": "assets/new1.jpeg"},
    {"name": "MSI", "price": "1,55000rs", "image": "assets/new2.jpeg"},
    {"name": "Acer", "price": "100000rs", "image": "assets/new3.jpeg"},
    {"name": "HP", "price": "80,000rs", "image": "assets/new4.jpeg"},
    {"name": "Asus", "price": "58,000rs", "image": "assets/image7.jpeg"},
    {"name": "Dell", "price": "35,000rs", "image": "assets/new6.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Colors.white,
        title: Text("Amazone", style: TextStyle(fontSize: 20)),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .6,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              elevation: 5,
              color: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(product["image"], fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product["name"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "Price :",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              product["price"],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
