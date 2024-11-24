import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/destination_model.dart';
import 'package:wisata_mobile_5/utils/const.dart';
import 'package:wisata_mobile_5/widget/rekomendasi_destination.dart';

class Viewall extends StatefulWidget {
  const Viewall({super.key});

  @override
  State<Viewall> createState() => _ViewallState();
}

class _ViewallState extends State<Viewall> {
  bool _isTapped1 = false;
  bool _isTapped2 = false;

  void _resetColors() {
    setState(() {
      _isTapped1 = false;
      _isTapped2 = false;
    });
  }

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

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
        child: SingleChildScrollView(
          child: Padding(
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
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const SizedBox(height: 20),
                Column(
                  children: List.generate(
                    rekomendasi.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          // Tambahkan aksi saat destinasi ditekan
                        },
                        child: RekomendasiDestination(
                          destination: rekomendasi[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
