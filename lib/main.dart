import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/search.dart';
import 'package:wisata_mobile_5/screens/Loginpage.dart';


void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}
