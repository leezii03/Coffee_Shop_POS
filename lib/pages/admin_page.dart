import 'package:coffee_shop_pos/pages/dashboard_page.dart';
import 'package:coffee_shop_pos/pages/login_page.dart';
import 'package:coffee_shop_pos/pages/products_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Widget _currentPage = const AdminDashboard();

  void _navigateTo(Widget page) {
    setState(() {
      _currentPage = page;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('MMM d').format(DateTime.now());
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 79, 42),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.coffee, size: 30, color: Colors.white),
                  ),

                  SizedBox(width: 10),

                  // Name & Email
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Coffee Shop',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Admin Panel',
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Drawer items
            ListTile(
              leading: Icon(Icons.insert_chart_sharp),
              title: Text('Dashboard'),
              onTap: () => _navigateTo(const AdminDashboard()),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Products'),
              onTap: () => _navigateTo(const ProductsPage()),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              title: Text('Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text('Inventory'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.insert_chart_sharp),
              title: Text('Reports'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Users'),
              onTap: () {},
            ),
            SizedBox(height: 270),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout"),
              titleTextStyle: TextStyle(color: Colors.red),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.date_range_outlined, size: 20),
            SizedBox(width: 10),
            Text(currentDate, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      body: _currentPage,
    );
  }
}
