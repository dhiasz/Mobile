import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/mystatefulwidget.dart';
import 'package:wisata_mobile_5/screens/landingpage.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mystatefulwidget(),
    );
  }
}
