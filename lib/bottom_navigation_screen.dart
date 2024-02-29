import 'package:bottom_naviation_bar/cart_screen.dart';
import 'package:bottom_naviation_bar/favourite_screen.dart';
import 'package:bottom_naviation_bar/home_screen.dart';
import 'package:bottom_naviation_bar/order_screen.dart';
import 'package:bottom_naviation_bar/user_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const UserScreen(),
    const Orderscreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () => _onItemTapped(4),
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.cyan,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              tooltip: "Home",
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              tooltip: "Cart",
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              tooltip: "Favourite",
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              tooltip: "Person",
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
