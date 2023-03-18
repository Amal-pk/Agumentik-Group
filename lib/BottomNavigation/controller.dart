import 'package:flutter/material.dart';

class BottomNavigationController extends ChangeNotifier {
  List<dynamic> screens = [
    // const HomePage(),
    // const MenuPage(),
    // const CartPage(),
    // const AccountPage(),
  ];

  int currentIndex = 0;

  int currentIndexSearch() {
    return currentIndex;
  }

  void currentIndexResult(int index) {
    currentIndex = index;
    notifyListeners();
  }
}