import 'package:champion_neobank/home_navigation/home_screen.dart';
import 'package:champion_neobank/home_navigation/my_account.dart';
import 'package:champion_neobank/home_navigation/my_card.dart';
import 'package:champion_neobank/home_navigation/my_deals.dart';
import 'package:champion_neobank/home_navigation/scan_qr.dart';
import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class HomeNavBar extends StatefulWidget {
  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  // Navigation Bar Logic
  // Selected index itu awalnya harus 0 (home)
  // Widget options isinya class yg pada ada di navbar
  var _selectedIndex = 0;
  var _widgetOptions = [
    HomeScreen(),
    MyCardScreen(),
    ScanQRScreen(),
    MyDealsScreen(),
    MyAccountScreen(),
  ];

  // Ini buat pindah2 ke screen yg lain dari nav bar
  void _onItemTap(var index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Biar tiap screen beda tiap index
      // untuk items[] pake bottom navigation bar item,
      // Isinya icon sama label
      // Tambah props currentIndex sama onTap
      body: DoubleBackToCloseApp(
        child: _widgetOptions.elementAt(_selectedIndex),
        snackBar: SnackBar(content: Text("Press back again to exit.")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey[600],
        elevation: 10,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contactless_outlined), label: "Card"),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_outlined), label: "Scan QR"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: "Deals"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
