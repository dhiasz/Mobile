import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/content_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isTapped1 = false;
  bool _isTapped2 = false;

  void _resetColors() {
    setState(() {
      _isTapped1 = false;
      _isTapped2 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // Tinggi AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Menghapus tombol kembali default
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Menjaga keselarasan vertikal
              children: [
                // Bagian kiri: Teks dengan subjudul
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Menjaga teks sejajar dengan gambar
                  children: [
                    const SizedBox(height: 15.0),
                    const Text(
                      'Hi, Kevin 👋',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Eksplor The World',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // Bagian kanan: CircleAvatar
                CircleAvatar(
                  radius: 20.0, // Ukuran gambar avatar
                  backgroundImage: const NetworkImage(
                    'https://i.pinimg.com/564x/52/46/49/524649971a55b2f3a0dae1d537c61098.jpg',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap:
            _resetColors, // Reset warna kotak ke abu-abu jika tap terjadi di luar kotak
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search places',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.tune),
                        onPressed: () {
                          // Tambahkan fungsionalitas untuk tombol ini
                        },
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Agar teks berada di kiri dan kanan
                    children: const [
                      Text(
                        'Popular places',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromARGB(135, 90, 90, 90),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Kotak hitam dengan aksi ketukan
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 45.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Kotak pertama ('Most viewed')
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTapped1 =
                                !_isTapped1; // Toggle warna kotak pertama
                            _isTapped2 = false; // Reset kotak kedua
                          });
                        },
                        child: Container(
                          height: 45.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: _isTapped1
                                ? Colors.black
                                : Colors
                                    .grey[300], // Warna berubah saat ditekan
                            borderRadius:
                                BorderRadius.circular(15.0), // Sudut melengkung
                          ),
                          alignment:
                              Alignment.center, // Agar teks berada di tengah
                          child: const Text(
                            'Most viewed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.0, // Teks menjadi bold
                            ),
                            textAlign: TextAlign
                                .center, // Teks berada di tengah horizontal
                          ),
                        ),
                      ),
                    ),
                    // Kotak kedua ('Nearby')
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTapped2 =
                                !_isTapped2; // Toggle warna kotak kedua
                            _isTapped1 = false; // Reset kotak pertama
                          });
                        },
                        child: Container(
                          height: 45.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: _isTapped2
                                ? Colors.black
                                : Colors
                                    .grey[300], // Warna berubah saat ditekan
                            borderRadius:
                                BorderRadius.circular(15.0), // Sudut melengkung
                          ),
                          alignment:
                              Alignment.center, // Agar teks berada di tengah
                          child: const Text(
                            'Nearby',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.0, // Teks menjadi bold
                            ),
                            textAlign: TextAlign
                                .center, // Teks berada di tengah horizontal
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //content gambar
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 35.0, 20.0, 20.0),
              child: Container(
                height: 460.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    final item = content[index];
                    return GestureDetector(
                      onTap: () {
                        print(
                            "${item.name} diklik!"); // Aksi saat gambar diklik
                      },
                      child: Container(
                        height: 445.0,
                        width: 250.0, // Lebar tiap gambar
                        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0), // Memberi jarak antar gambar
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 211, 209, 209).withOpacity(1),
                              offset: Offset(0, 6),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ], 

                          image: DecorationImage(
                            image: AssetImage(
                                item.image), // Mengambil gambar dari list
                            fit: BoxFit.cover,
                          ),

                        ),

                        child: Stack(
                          children: [
                            // Teks di atas gambar
                            Positioned(
                              bottom: 10,
                              left: 10,
                              right: 10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 5.0, sigmaY: 5.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    height: 75,
                                    width: 224,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Text(
                                      item.name,
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
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
