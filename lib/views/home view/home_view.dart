import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndesx = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const HomeViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        onTap: (int value) {
          setState(() {
            currentIndesx = value;
          });
        },
        currentIndex: currentIndesx,
        items: const [
          BottomNavigationBarItem(
            tooltip: 'asda',
            label: 'hello',
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Pizza',
            icon: Icon(
              Icons.local_pizza,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'pesron',
            icon: Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
