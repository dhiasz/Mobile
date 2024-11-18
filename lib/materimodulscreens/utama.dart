import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Menyimpan status tap untuk setiap kotak
  bool _isTapped1 = false; // Status tap untuk 'Most viewed'
  bool _isTapped2 = false; // Status tap untuk 'Nearby'

  // Fungsi untuk mengubah semua kotak ke warna abu-abu
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
        preferredSize: const Size.fromHeight(90.0), // Tinggi AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Menghapus tombol kembali default
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center, // Menjaga keselarasan vertikal
              children: [
                // Bagian kiri: Teks dengan subjudul
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center, // Menjaga teks sejajar dengan gambar
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
        // GestureDetector untuk menangkap ketukan di luar area kotak
        onTap: _resetColors, // Reset warna kotak ke abu-abu jika tap terjadi di luar kotak
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Agar teks berada di kiri dan kanan
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
                height: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Kotak pertama ('Most viewed')
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTapped1 = !_isTapped1; // Toggle warna kotak pertama
                            _isTapped2 = false; // Reset kotak kedua
                          });
                        },
                        child: Container(
                          height: 40.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: _isTapped1 ? Colors.black : Colors.grey[300],  // Warna berubah saat ditekan
                            borderRadius: BorderRadius.circular(15.0),  // Sudut melengkung
                          ),
                          alignment: Alignment.center,  // Agar teks berada di tengah
                          child: const Text(
                            'Most viewed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,  // Teks menjadi bold
                            ),
                            textAlign: TextAlign.center,  // Teks berada di tengah horizontal
                          ),
                        ),
                      ),
                    ),
                    // Kotak kedua ('Nearby')
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTapped2 = !_isTapped2; // Toggle warna kotak kedua
                            _isTapped1 = false; // Reset kotak pertama
                          });
                        },
                        child: Container(
                          height: 40.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: _isTapped2 ? Colors.black : Colors.grey[300],  // Warna berubah saat ditekan
                            borderRadius: BorderRadius.circular(15.0),  // Sudut melengkung
                          ),
                          alignment: Alignment.center,  // Agar teks berada di tengah
                          child: const Text(
                            'Nearby',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,  // Teks menjadi bold
                            ),
                            textAlign: TextAlign.center,  // Teks berada di tengah horizontal
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
