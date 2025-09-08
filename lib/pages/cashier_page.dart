import 'package:coffee_shop_pos/pages/login_page.dart';
import 'package:flutter/material.dart';

class CashierPage extends StatefulWidget {
  const CashierPage({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {
        "name": "Espresso",
        "price": 2.5,
        "stock": 50,
        "icon": Icons.coffee_maker_outlined,
      },
      {
        "name": "Latte",
        "price": 3.0,
        "stock": 40,
        "icon": Icons.local_cafe_outlined,
      },
      {
        "name": "Cappuccino",
        "price": 3.5,
        "stock": 35,
        "icon": Icons.coffee_maker_outlined,
      },
      {
        "name": "Americano",
        "price": 2.0,
        "stock": 60,
        "icon": Icons.coffee_outlined,
      },
      {
        "name": "Mocha",
        "price": 3.8,
        "stock": 25,
        "icon": Icons.coffee_rounded,
      },
      {
        "name": "Macchiato",
        "price": 3.2,
        "stock": 30,
        "icon": Icons.coffee_sharp,
      },
      {
        "name": "Flat White",
        "price": 3.4,
        "stock": 28,
        "icon": Icons.local_drink_outlined,
      },
      {
        "name": "Cold Brew",
        "price": 3.6,
        "stock": 22,
        "icon": Icons.icecream_outlined,
      },
      {
        "name": "Iced Coffee",
        "price": 2.8,
        "stock": 45,
        "icon": Icons.local_cafe_outlined,
      },
      {
        "name": "Affogato",
        "price": 4.0,
        "stock": 15,
        "icon": Icons.local_bar_outlined,
      },
    ];
    List<dynamic> categories = ['All', 'Coffee', 'Tea', 'Pastries', 'Snacks'];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 182, 79, 42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.coffee, color: Colors.white),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Coffee Shop POS",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("Welcome", style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => Container(
                  height: 800,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.shopping_cart_outlined),
                              SizedBox(width: 10),
                              Text(
                                "Cart (9)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline, color: Colors.red,))
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(),

                      Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Product Info
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Espresso",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$3.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),

                            // Quantity + Trash aligned right
                            Row(
                              children: [
                                // Minus Button
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                SizedBox(width: 8),

                                // Quantity Number
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 8),

                                // Plus Button
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                SizedBox(width: 5),

                                // Delete Button
                                IconButton(
                                  icon: Icon(Icons.delete_outlined, color: Colors.red),
                                  onPressed: () {
                                    // delete action
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(
              "Logout",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ),
        ],
        shape: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 24),
                  filled: true,
                  fillColor: const Color.fromARGB(40, 163, 149, 148),
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Search products...',
                ),
              ),
            ),

            // category
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: categories.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String category = entry.value;
                  bool isActive = idx == activeIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        activeIndex = idx;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isActive
                            ? const Color.fromARGB(255, 182, 79, 42)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        category,
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // product
            SizedBox(height: 20),
            SizedBox(
              height: 660,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            spreadRadius: 1,
                            blurRadius: 20,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 224, 213),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                product['icon'],
                                color: const Color.fromARGB(255, 224, 101, 57),
                              ),
                            ),

                            SizedBox(height: 10),
                            Text(
                              "${product['name']}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "\$${product['price']}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 224, 101, 57),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 3,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 224, 213),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "Stock: ${product['stock']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 136, 40, 4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
