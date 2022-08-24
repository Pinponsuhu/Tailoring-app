import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/all_customer/all_customer.dart';
import 'package:tailor_measurement/screens/home/home.dart';
import 'package:tailor_measurement/components/bottom_nav.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Authenticated extends StatefulWidget {
  Authenticated({Key? key}) : super(key: key);

  @override
  State<Authenticated> createState() => _AuthenticatedState();
}

class _AuthenticatedState extends State<Authenticated> {
  var screens = [Home(), AllCustomer()];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[screenIndex],
        bottomNavigationBar: Container(
          color: Colors.indigo[900],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 26, 35, 126),
              color: Colors.white,
              activeColor: Colors.yellow[600],
              tabBackgroundColor: Colors.indigo.shade700,
              gap: 10.0,
              iconSize: 24.0,
              padding: EdgeInsets.all(16),
              onTabChange: (index) {
                setState(() {
                  screenIndex = index;
                });
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
        ),
      ),
    );
  }
}
