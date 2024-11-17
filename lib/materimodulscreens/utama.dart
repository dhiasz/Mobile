import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0), // Tinggi AppBar
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading:
                false, // Menghapus tombol kembali default
            flexibleSpace: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                        'Subjudul atau deskripsi',
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
