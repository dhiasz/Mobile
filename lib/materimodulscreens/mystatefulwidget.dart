import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/searchpage.dart';
import 'package:wisata_mobile_5/materimodulscreens/settingpage.dart';
import 'package:wisata_mobile_5/materimodulscreens/userpage.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mystatefulwidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0; // Indeks tab yang aktif

  // Daftar halaman untuk setiap tab
  final List<Widget> _pages = const [
    HomePage(), // Halaman Home
    Searchpage(), // Halaman Cari
    Settingpage(), // Halaman Pengaturan
    Userpage(), // Halaman Pengguna
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _pages[_currentIndex], // Mengganti halaman berdasarkan tab yang aktif
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
