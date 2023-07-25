import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
   MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
List<BottomNavigationBarItem> navs=[
BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: navs,
    selectedItemColor: Colors.green,
    
    type: BottomNavigationBarType.fixed,);
  }
}