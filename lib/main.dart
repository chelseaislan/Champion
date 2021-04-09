import 'package:champion_neobank/account/edit_profile.dart';
import 'package:champion_neobank/home_navigation/home_screen.dart';
import 'package:champion_neobank/home_navigation/my_account.dart';
import 'package:champion_neobank/home_navigation/my_card.dart';
import 'package:champion_neobank/home_navigation/my_deals.dart';
import 'package:champion_neobank/onboarding/home_navbar.dart';
import 'package:champion_neobank/onboarding/login_page.dart';
import 'package:champion_neobank/onboarding/new_pin.dart';
import 'package:champion_neobank/onboarding/personal_data.dart';
import 'package:champion_neobank/onboarding/reset_page.dart';
import 'package:champion_neobank/onboarding/signup_page.dart';
import 'package:champion_neobank/onboarding/splash_screen_guest.dart';
import 'package:flutter/material.dart';
// Pakai routes di main.dart
// Jangan pake push replacement ala enrico lagi
// Pake Navigator.of(context).pushNamed("/nama route");
// pushNamed: biasa, kalo back: Pop
// pushReplacementNamed: kalo misalnya dari splash ke signup terus login,
// kalo diback bakal balik ke splash, bukan ke signup
// pushNamedAndRemoveUntil: kalo diback bakal keluar
void main() {
  runApp(ChampionApp());
}

class ChampionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        // Onboarding
        "/splash": (context) => new SplashScreen(),
        "/signup": (context) => new SignupPage(),
        "/login": (context) => new LoginPage(),
        "/resetpage": (context) => new ResetPage(),
        "/personaldata": (context) => new PersonalData(),
        "/newpin": (context) => new SetNewPin(),
        "/homenavbar": (context) => new HomeNavBar(),
        // Home Navigation Screens
         "/homescreen": (context) => new HomeScreen(),
         "/mycard": (context) => new MyCardScreen(),
         "/mydeals": (context) => new MyDealsScreen(),
         "/myaccount": (context) => new MyAccountScreen(),
        // My Account Screens 
         "/editprofile": (context) => new EditProfile(),
      },
    );
  }
}
