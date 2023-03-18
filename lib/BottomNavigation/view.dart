import 'package:flutter/material.dart';
import 'package:mytestg/BottomNavigation/controller.dart';
import 'package:provider/provider.dart';

class BottomNavigations extends StatelessWidget {
  const BottomNavigations({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<BottomNavigationController>();
    int currentScreenIndex = controller.currentIndexSearch();
    return Scaffold(
      // body:controller.screens[currentScreenIndex], ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 11, 53, 88),
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentScreenIndex,
        onTap: (value) => controller.currentIndexResult(value),

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 0)
                  ? Icons.model_training
                  : Icons.model_training_outlined,
            ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 1)
                  ? Icons.line_axis
                  : Icons.line_axis_outlined,
            ),
            label: 'Performence',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 2)
                  ? Icons.account_tree
                  : Icons.account_tree_outlined,
            ),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon((currentScreenIndex == 3)
                ? Icons.notifications_active
                : Icons.notifications_active_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon((currentScreenIndex == 4)
                ? Icons.person_pin_rounded
                : Icons.person_pin_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
