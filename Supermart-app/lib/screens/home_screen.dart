import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Rice 5kg", "price": 250},
    {"name": "Sugar 1kg", "price": 45},
    {"name": "Oil 1L", "price": 120},
    {"name": "Soap Pack", "price": 60},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SuperMart Home"),
      ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(products[index]["name"]),
              subtitle: Text("₹${products[index]["price"]}"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Added to cart")),
                  );
                },
                child: Text("Add"),
              ),
            ),
          );
        },
      ),
    );
  }
}