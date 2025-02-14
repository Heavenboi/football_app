import 'package:flutter/material.dart';

// product class.
class Product {
  final String name;
  final double price;
  final int quantity;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });
}

// our main page.

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  List<Product> products = [
    Product(
      name: "Macbook",
      price: 4000,
      quantity: 1,
      imageUrl:
          "https://img.freepik.com/free-photo/still-life-books-versus-technology_23-2150062920.jpg?t=st=1739565038~exp=1739568638~hmac=e391e86f96e3fbf457a0024e4dd973823ca2c4dc0e504eaeea078525f3eb679a&w=2000",
    ),
    Product(
      name: "iPhone",
      price: 24000,
      quantity: 6,
      imageUrl:
          "https://img.freepik.com/free-photo/still-life-books-versus-technology_23-2150063021.jpg?t=st=1739565113~exp=1739568713~hmac=4fe9076ab2a376f2cfe6dc130098eb5a9ea6a547bd3fc8ca6e3455729b7704ad&w=2000",
    ),
    Product(
      name: "iPad",
      price: 4500,
      quantity: 3,
      imageUrl:
          "https://img.freepik.com/free-photo/still-life-books-versus-technology_23-2150063064.jpg?t=st=1739565134~exp=1739568734~hmac=b82e89c83ea04c305501a03fb9c03dee2b5c195194ced7276e5306d56f6ce4cc&w=2000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background color
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Products'),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var product in products)
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.network(product.imageUrl, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text(product.name),
                        SizedBox(height: 5),
                        Text('Price: ${product.price}'),
                        SizedBox(height: 5),
                        Text('Quantity: ${product.quantity}'),
                      ],
                    ),
                  ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add product to cart logic goes here
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
