import 'package:flutter/material.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  final List<Map<String, dynamic>> products = const [
    {'name': 'Espresso', 'category': 'Coffee', 'price': '\$2.5', 'stock': 50},
    {
      'name': 'Cappuccino',
      'category': 'Coffee',
      'price': '\$4.00',
      'stock': 30,
    },
    {'name': 'Latte', 'category': 'Coffee', 'price': '\$4.50', 'stock': 25},
    {'name': 'Americano', 'category': 'Coffee', 'price': '\$3.00', 'stock': 40},
    {'name': 'Green Tea', 'category': 'Tea', 'price': '\$2.00', 'stock': 20},
    {'name': 'Earl Grey', 'category': 'Tea', 'price': '\$2.25', 'stock': 15},
    {
      'name': 'Croissant',
      'category': 'Pastries',
      'price': '\$3.50',
      'stock': 12,
    },
    {'name': 'Muffin', 'category': 'Pastries', 'price': '\$2.75', 'stock': 18},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Table Header
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Category",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "Stock",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Table Rows
        ...products.map(
          (product) => Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    product['name'].toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    product['category'].toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
                Expanded(
                  child: Text(
                    product['price'].toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
                Expanded(
                  child: Text(
                    product['stock'].toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
