import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/mystatefulwidget.dart';

class CIbereum extends StatefulWidget {
  const CIbereum({super.key});

  @override
  State<CIbereum> createState() => _CIbereumState();
}

class _CIbereumState extends State<CIbereum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Container(
                height: 450,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0, 3),
                      blurRadius: 3,
                      spreadRadius: 3,
                    )
                  ],
                  image: const DecorationImage(
                    image:
                        AssetImage('assets/images/Cibeureum.jpg'), // Path benar
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            height: 75,
                            width: 224,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Text(
                              'Curug Cibereum',
                              style: const TextStyle(
                                height: 2,
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // CircleAvatar positioned at the top left
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mystatefulwidget()),
                          );
                        },
                        child: CircleAvatar(
                          radius: 20.0, // Ukuran gambar avatar
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(
                            Icons
                                .arrow_back_ios_new_outlined, // Sesuaikan dengan icon yang diinginkan
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 20.0, // Ukuran gambar avatar
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: Icon(
                          Icons
                              .bookmark_outline_rounded, // Sesuaikan dengan icon yang diinginkan
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
