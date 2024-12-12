import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_5/screens/landingpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Menunda sebanyak 3 detik
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Landingpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Container(
         decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0172B2), // Warna di atas
                Color(0xFF001645), // Warna di bawah
              ],
            ),
          ),
       
      
      child:Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/ecd897a5-d0b4-419c-9ecb-0268b7911b99/eahl07KKiL.json',
              width: 350,
              height: 350,
              fit: BoxFit.contain,
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 400),
                Text(
                  'CIPUN',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'TRAVEL',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
