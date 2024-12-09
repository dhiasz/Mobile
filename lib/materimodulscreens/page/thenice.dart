import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/mystatefulwidget.dart';

class Thenice extends StatefulWidget {
  const Thenice({super.key});

  @override
  State<Thenice> createState() => _TheniceState();
}

class _TheniceState extends State<Thenice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                      offset: const Offset(0, 6),
                      blurRadius: 4,
                      spreadRadius: 4,
                    )
                  ],

                  //ASSETS GAMBAR

                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/Thenicepark.jpg'), // Path benar
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
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            height: 75,
                            width: 224,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Menyelaraskan ke kiri
                              children: [
                                //Nama WISATA

                                Text(
                                  'The Nice Park',
                                  style: TextStyle(
                                    height: 2,
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Row(
                                  // Membatasi Row ke ukuran kontennya
                                  children: [
                                    Icon(
                                      Icons.location_pin, // Ikon peta
                                      color: Color.fromARGB(
                                          255, 224, 223, 223),
                                      size: 20.0, // Ukuran ikon
                                    ),

                                    //LOKASI WISATA

                                    SizedBox(
                                        width:
                                            4.0), // Jarak minimal antara ikon dan teks
                                    Text(
                                      'Cianjur, Mariwati-Sukaresmi',
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Color.fromARGB(
                                            255, 224, 223, 223),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
                                builder: (context) => const Mystatefulwidget()),
                          );
                        },
                        child: CircleAvatar(
                          radius: 20.0, // Ukuran gambar avatar
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: const Icon(
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
                        child: const Icon(
                          Icons
                              .bookmark_outline_rounded, // Sesuaikan dengan icon yang diinginkan
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),

              //TULISAN DESKIPSI

              child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //overview
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                          color: Color.fromARGB(255, 116, 115, 115),
                        ),
                      )
                    ],
                  ),

                  // DESKRIPSI WISATA

                  SizedBox(height: 30.0),
                  Text(
                    'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'Fasilitas',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //FASILITAS WISATA
                  Text(
                    '1. Tempat parkir luas\n'
                    '2. Toilet\n'
                    '3. Masjid\n'
                    '4. Aula\n'
                    '5. Tempat istirahat\n'
                    '6. Tempat sampah\n'
                    '7. Pusat informasi\n'
                    '8. Restoran, food court, dan snack corner\n'
                    '9. P3K\n'
                    '10. Keamanan\n'
                    '11. Spot foto yang unik dan instagramable\n'
                    '12. E-bike\n'
                    '13. Merchandise Store',
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'WAHANA',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //WAHANA WISATA
                  Text(
                    '1. Mini Zoo\n'
                    '2. Sky Bridge (jembatan gantung)\n'
                    '3. Flying Fox\n'
                    '4. ATV\n'
                    '5. Sepeda air dan perahu bebek\n'
                    '6. Kolam renang dan kolam pancing\n'
                    '7. Playground\n'
                    '8. Rainbow Slide\n'
                    '9. Hanging Steps\n'
                    '10. Giant Swing\n'
                    '11. Kebun sayur organik\n'
                    '12. Aneka rumah flora dan fauna (rumah jamur, rumah kupu-kupu, rumah lebah, rumah burung, dan rumah tanaman)',
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'Jam Operasional & Tiket',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //BIAYA TIKET TARIF WISATA JAM OPERASIONAL
                  Text(
                    'Jam Operasioanl : Senin - Jumat, 09:00 - 17:00\n'
                    '                       : Sabtu - Minggu, 08.00-17.45\n'
                    'Harga               : Weekday Rp30.000 & Weekend Rp35.000',
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Keindahan The Nice',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 400, // Adjust height as needed
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: [
                    // Gambar pertama dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Thenicepark.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gambar kedua dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Thenicepark(2).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gambar ketiga dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Thenicepark(3).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
