import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget buildBottomNav() {
  int screenIndex = 0;
  return Container(
    color: Colors.indigo[900],
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18),
      child: GNav(
        backgroundColor: Color.fromARGB(255, 26, 35, 126),
        color: Colors.white,
        activeColor: Colors.yellow[600],
        tabBackgroundColor: Colors.indigo.shade700,
        gap: 10.0,
        iconSize: 24.0,
        padding: EdgeInsets.all(18),
        onTabChange: (index) {
          screenIndex = index;
        },
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.search,
            text: "Search",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favorites",
          ),
          GButton(
            icon: Icons.settings,
            text: "Settings",
          ),
        ],
      ),
    ),
  );
}
