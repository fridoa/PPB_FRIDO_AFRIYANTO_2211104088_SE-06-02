import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: TouristSpotsPage(),
    );
  }
}

class TouristSpotsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('Rekomendasi Wisata'),
            title: Text(
              'Rekomendasi Wisata Di Banyumas',
              style: TextStyle(
                fontSize: 26, // Ukuran font yang lebih besar
                fontWeight: FontWeight.bold, // Bold
                color: const Color.fromARGB(255, 255, 251, 251), // Warna teks
              ),
            ),
            centerTitle: true, // Menempatkan judul di tengah
            backgroundColor: Colors.transparent,
            floating: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0), // Geser ke bawah 50 piksel
                    child: Image.network(
                      'https://cdn.idntimes.com/content-images/community/2022/08/fromandroid-17c72ff5f7b049d9866a84f1f3990e4c.jpg',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  // Menambahkan BackdropFilter untuk efek blur
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black
                          .withOpacity(0.3), // Menambahkan efek gelap
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildTouristSpot(touristSpots[index]);
              },
              childCount: touristSpots.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTouristSpot(Map<String, String> spot) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          Image.network(
            spot['image']!,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              spot['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              spot['description']!,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan kode tindakan di sini!
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text('Kunjungi Sekarang',
                style: TextStyle(color: Colors.black)),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  // Daftar tempat wisata
  final List<Map<String, String>> touristSpots = [
    {
      'name': 'Miniatur Dunia Purwokerto',
      'image':
          'https://bobobox.com/blog/wp-content/uploads/2023/08/Wisata-di-Banyumas-yang-Lagi-Hit.webp',
      'description':
          'Deretan wisata pertama di Banyumas adalah Miniatur Dunia Purwokerto, yang baru dibuka tahun 2016 lalu, kawasan ini berada jl.Raya Baturaden Barat, Ketenger, Baturaden, Purwokerto, Jawa Tengah. '
    },
    {
      'name': 'Baturaden',
      'image': 'https://i.ytimg.com/vi/Xv_MPfIT14w/maxresdefault.jpg',
      'description':
          'Baturaden merupakan wisata andalan kota ini, dimana kamu akan melihat hamparan pemandangan alam pegunungan, lokasinya berada di Kabupaten Banyumas, Jawa Tengah. '
    },
    {
      'name': 'baturaden Adventure Forest',
      'image':
          'https://tse3.mm.bing.net/th?id=OIP.67t6Lh2Ya_T9t8U1icfDzQHaD-&pid=Api&P=0&h=220',
      'description':
          'Wisata selanjutnya yang wajib kamu kunjungi adalah adventure forest, yang berlokasi di bawah baturaden, dimana kamu akan melihat pemandangan pegunungan yang indah serta kamu juga bisa bermain di alam terbuka, lokasinya berada di Kabupaten Banyumas, Jawa Tengah.'
    },
    {
      'name': 'Goa Maria Kaliori',
      'image':
          'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/goa-maria-kaliori.jpg',
      'description':
          'Terletak di perbukitan yang hijau dengan suasana sejuk dan nyaman di desa Kaliori Kecamatan Kalibagor yang berjarak sekitar 14 kilometer arah timur kota Purwokerto. Prakarsa pembangunan tempat ziarah ini bermula dari beberapa aktivis umat Katolik di Banyumas.'
    },
  ];
}
