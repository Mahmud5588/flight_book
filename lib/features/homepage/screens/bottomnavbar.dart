import 'package:exam/features/account/screens/account.dart';
import 'package:exam/features/homepage/screens/homepage.dart';
import 'package:exam/features/transaction/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const Homepage(),
    const Transactions(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0064D2),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF0064D2),
        currentIndex: _currentIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            label: "Home",
            icon: const Icon(Icons.home),
          ),
          BottomNavigationBarItemWidget(
            label: "Transaction",
            icon: const Icon(Icons.local_attraction_outlined),
          ),
          BottomNavigationBarItemWidget(
            label: "Account",
            icon: Icon(MdiIcons.accountSettings),
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem BottomNavigationBarItemWidget(
    {required String label, required Icon icon}) {
  return BottomNavigationBarItem(
      backgroundColor: Colors.white, label: label, icon: icon);
}
