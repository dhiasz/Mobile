import 'dart:math';

Random random = Random();

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name,
      description,
      category,
      location,
      fasility,
      wahana,
      jam_dan_tiket;
  final double rate;

  TravelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
    required this.fasility,
    required this.wahana,
    required this.jam_dan_tiket,
  });
}

List<TravelDestination> listDestination = [
  // Popular destinations
  TravelDestination(
      id: 1,
      name: "The Nice Park Funtasy",
      category: 'popular',
      image: [
        'assets/images/Thenicepark.jpg',
        'assets/images/Thenicepark(2).jpg',
        'assets/images/Thenicepark(3).jpg',
      ],
      location: 'Cianjur, Mariwati-Sukaresmi',
      review: random.nextInt(250) + 20,
      price: 30000,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.8,
      fasility: "1. Tempat parkir luas\n"
          "2. Toilet\n"
          "3. Masjid\n"
          "4. Aula\n"
          "5. Tempat istirahat\n"
          "6. Tempat sampah\n"
          "7. Pusat informasi\n"
          "8. Restoran, food court, dan snack corner\n"
          "9. P3K\n"
          "10. Keamanan\n"
          "11. Spot foto yang unik dan instagramable\n"
          "12. E-bike\n"
          "13. Merchandise Store",
      wahana: "1. Mini Zoo\n"
          "2. Sky Bridge (jembatan gantung)\n"
          "3. Flying Fox\n"
          "4. ATV\n"
          "5. Sepeda air dan perahu bebek\n"
          "6. Kolam renang dan kolam pancing\n"
          "7. Playground\n"
          "8. Rainbow Slide\n"
          "9. Hanging Steps\n"
          "10. Giant Swing\n"
          "11. Kebun sayur organik\n"
          "12. Aneka rumah flora dan fauna (rumah jamur, rumah kupu-kupu, rumah lebah, rumah burung, dan rumah tanaman)",
      jam_dan_tiket: "Jam Operasioanl : Senin - Jumat, 09:00 - 17:00\n"
          "                       : Sabtu - Minggu, 08.00-17.45\n"
          "Harga               : Weekday Rp30.000 & Weekend Rp35.000"),

  TravelDestination(
      id: 2,
      name: "Kebun Raya Cibodas",
      category: 'popular',
      image: [
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
      ],
      location: 'Cipanas, Cibodas, Indonesia',
      review: random.nextInt(250) + 20,
      price: 25000,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.9,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket: "BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
    id: 3,
    name: "Taman Bunga",
    category: 'popular',
    image: [
      'assets/images/Tamanbunga(2).jpg',
      'assets/images/Tamanbunga(3).jpg',
      'assets/images/Tamanbunga.jpg',
      'assets/images/Tamanbunga(4).jpg',
    ],
    location: 'Cianjur, Mariwati-Sukaresmi',
    review: random.nextInt(250) + 20,
    price: 50000,
    description:
        'Seperti namanya, Little Venice adalah tempat wisata yang meniru gaya kota Venezia di Italia. Kota ini terkenal banget sebagai salah satu destinasi liburan impian karena keindahannya dan juga keunikannya, karena sebagian kota seperti dibangun di atas laut sehingga menghasilkan banyak kanal-kanal air yang bisa ditelusuri dengan perahu kecil bernama gondola. Selain jalan-jalan dengan gondola ada banyak spot foto yang instagramable.',
    rate: 4.8,
    fasility: '1. Tempat parkir luas\n'
        '2. Toilet\n'
        '3. Masjid\n'
        '4. Tempat Bermain Anak\n'
        '5. Kolam Pancing\n'
        '6. Tempat sampah\n'
        '7. Arena Fantasi\n'
        '8. Restoran, food court, dan snack corner\n'
        '9. P3K\n'
        '10. Keamanan\n'
        '11. Spot foto yang unik dan instagramable\n'
        '12. Merchandise Store\n'
        '13. Minibus\n',
    wahana: '1. Foto Studio\n'
        '2. Gondola\n'
        '3. Jembatan\n'
        '4. Around The World\n'
        '5. Sewa Kostum\n'
        '6.Mississippi Boat\n'
        '7. Duck Ride \n'
        '8. Merry Go Round \n'
        '9. Bumper Boat \n'
        '10. Dragon Boat \n'
        '11. Taxi Boat \n'
        '12. paint ball \n'
        '13. Labirin \n',
    jam_dan_tiket: 'Jam Operasioanl : Senin - Jumat, 09.00-16.30 \n'
        '                       : Sabtu - Minggu, 08.00-18.00\n'
        'Harga               : Weekday Rp50.000, Weekend Rp60.000',
  ),
  TravelDestination(
    id: 4,
    name: "Little Venice",
    category: 'popular',
    image: [
      "assets/images/Little_Venice(1).png",
      "assets/images/Little_Venice(2).jpg",
      "assets/images/Little_Venice(3).jpg",
      "assets/images/Little_Venice(4).jpg",
    ],
    location: 'Cipanas, Kotabunga ',
    review: random.nextInt(250) + 20,
    price: 30000,
    description:
        'Seperti namanya, Little Venice adalah tempat wisata yang meniru gaya kota Venezia di Italia. Kota ini terkenal banget sebagai salah satu destinasi liburan impian karena keindahannya dan juga keunikannya, karena sebagian kota seperti dibangun di atas laut sehingga menghasilkan banyak kanal-kanal air yang bisa ditelusuri dengan perahu kecil bernama gondola. Selain jalan-jalan dengan gondola ada banyak spot foto yang instagramable.',
    rate: 4.7,
    fasility: '1. Tempat parkir luas\n'
        '2. Toilet\n'
        '3. Masjid\n'
        '4. Tempat Bermain Anak\n'
        '5. Kolam Pancing\n'
        '6. Tempat sampah\n'
        '7. Arena Fantasi\n'
        '8. Restoran, food court, dan snack corner\n'
        '9. P3K\n'
        '10. Keamanan\n'
        '11. Spot foto yang unik dan instagramable\n'
        '12. Merchandise Store',
    wahana: '1. Foto Studio\n'
        '2. Gondola\n'
        '3. Jembatan\n'
        '4. Around The World\n'
        '5. Sewa Kostum\n'
        '6.Mississippi Boat\n'
        '7. Duck Ride \n'
        '8. Merry Go Round \n'
        '9. Bumper Boat \n'
        '10. Dragon Boat \n'
        '11. Taxi Boat \n',
    jam_dan_tiket: 'Jam Operasioanl : Senin - Jumat, 09.00-16.30 \n'
        '                       : Sabtu - Minggu, 08.00-18.00\n'
        'Harga               : Masuk : 30000\n'
        '             paket Fun: 90000',
  ),

  // Recommended destinations
  TravelDestination(
      id: 5,
      name: "Curug Cibeureum",
      category: 'rekomendasi',
      image: [
        'assets/images/Cibeureum (2).jpg',
        'assets/images/Cibeureum.jpg',
        'assets/images/Telagabiru.jpg',
        'assets/images/Telagabiru(2).png',
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description:
          'Selain keindahan Curug atau Air Terjun Cibeureum, selama perjalanan menuju ke lokasi akan terhidang pemandangan alam yang indah dan eksotis. Tidak heran jika pengunjung menemukan berbagai jenis burung dan kera yang bergelantungan. Ada juga telaga biru dan rawa panyangcangan yang bisa dinikmati keindahannya selama perjalanan. Serta jembatan panjang yang terbuat dari batu buatan yang sering menjadi salah satu tempat favorit berfoto ria atau selfie selama perjalanan ke Curug Cibeureum ini.',
      rate: 4.9,
      fasility:  '1. Tempat parkir luas\n'
                    '2. Toilet\n'
                    '3. Pasar\n'
                    '4. Musolla\n'
                    '5. Pos\n'
                    '6. Tempat sampah\n'
                    '7. Spot foto yang unik dan instagramable\n',
      wahana: '1. Telaga Biru\n',
      jam_dan_tiket: 'Jam Operasioanl : Setiap hari07.00-14.00 \n'
                     'Harga               :  Weekday: Rp16.000 Weekend Rp18.500',),
  TravelDestination(
      id: 6,
      name: " Curug Cikondang",
      category: 'rekomendasi',
      image: [
        'assets/images/Cikondang1.jpg',
        'assets/images/Cikondang2.jpg',
        'assets/images/Cikondang3.jpg',
        'assets/images/Cikondang4.jpg',
      ],
      location: 'cianjur selatan, Indonesia',
      review: random.nextInt(250) + 20,
      price: 100,
      description:
          'Curug Cikondang merupakan air terjun yang menawarkan suasana alami dengan suara gemericik air yang menenangkan. Dikelilingi oleh perkebunan teh yang asri, curug ini sering disebut sebagai "Niagara Mini" oleh penduduk lokal. Pengunjung dapat menikmati pemandangan air terjun sambil bersantai di tepiannya.',
      rate: 4.5,
      fasility: '1. Jalur trekking,\n'
                 '2.  area parkir, toilet,\n'
                 '3. gazebo,\n'
                 '4. warung kecil.\n',
      wahana:   '1. Spot foto air terjun,\n'
                 '2. trekking ringan,\n'
                 '3. area bermain air.\n',
      jam_dan_tiket: 'Jam Operasioanl : Setiap hari 07.00-17.00 \n'
                     'Harga           :   Rp 12.000/orang'),
  TravelDestination(
      id: 7,
      name: "Pantai Jayanti",
      category: 'rekomendasi',
      image: [
        'assets/images/jayanti1.jpg',
        'assets/images/jayanti2.jpg',
        'assets/images/jayanti3.jpg',
        'assets/images/jayanti4.jpg',
       ],
      location: 'Cianjur Selatan, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description:
          'Pantai Jayanti dikenal dengan pasir putih yang bersih dan ombak yang tenang, membuatnya cocok untuk bersantai bersama keluarga. Pantai ini juga memiliki area dermaga yang sering dijadikan lokasi memancing oleh wisatawan. Pemandangan matahari terbit dan terbenam di sini sangat indah, menjadi daya tarik utama para pengunjung.',
      rate: 4.7,
      fasility: '1. Area parkir luas,\n'
                ' 2. gazebo, toilet,\n'
                 '3. tempat bilas,\n'
                ' 4 warung makan,\n'
                 '5 penyewaan perahu.\n',
      wahana:  '1. Perahu wisata,\n'
               '2. area bermain pasir,\n'
               '3. dermaga untuk memancing.\n',
      jam_dan_tiket: 'Jam Operasioanl : Setiap hari 06.00-19.00 \n'
                     'Harga           :   Rp 10.000/orang'),
  TravelDestination(
      id: 8,
      name: "gunung padang ",
      category: 'rekomendasi',
      image: [
            'assets/images/padang1.jpg',
            'assets/images/padang2.jpg',
            'assets/images/padang3.jpg',
            'assets/images/padang4.jpg',
    ],
      location: 'ciaanjur selatan, Indonesia',
      review: random.nextInt(250) + 20,
      price: 200,
      description:
          'Gunung Panang menawarkan keindahan alam yang memukau dengan panorama perbukitan hijau yang memanjakan mata. Pengunjung dapat menikmati trekking ringan, camping di area yang telah disediakan, serta spot foto yang menarik di puncak gunung. Tempat ini juga sering dijadikan lokasi wisata edukasi tentang flora dan fauna khas kawasan tersebut.',
      rate: 4.7,
      fasility:  '1. Area camping,\n'
                 '2. jalur trekking,\n'
                 '3. gazebo untuk istirahat,\n'
                 '4. toilet bersih,\n'
                 '5. warung makan lokal.\n',
      wahana:   '1. Spot foto puncak,\n'
                '2. jalur pendakian pemula,\n'
                ' 3. taman edukasi alam.\n,',
      jam_dan_tiket: 'Jam Operasioanl : Setiap hari 06.00-17.00 \n'
                     'Harga           :   Rp 10.000/orang'),
  TravelDestination(
      id: 9,
      name: "Candi Borobudur",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1596402184320-417e7178b2cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1512631911403-3e3a06d12389?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1620549146396-9024d914cd99?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1631340729644-8b8aad1e9dba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Jawa Tengah, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.8,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket: "BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
];
