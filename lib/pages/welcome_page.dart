import 'package:coffee_shop_pos/pages/carousel_page.dart';
import 'package:coffee_shop_pos/pages/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselPage(),
                SizedBox(height: 20),
                FittedBox(
                  child: Text(
                    "LIZZY COFFEE SHOP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Colors.pink,
                      letterSpacing: 30,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FilledButton(
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
                  child: Text("Get Start"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
