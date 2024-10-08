import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
            title: Text('Rekomendasi Wisata'),
            backgroundColor: Color.fromARGB(255, 2, 79, 4)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Judul Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PABRIK GULA SRAGI',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Gambar Tempat Wisata
              Image.network(
                'https://tse4.mm.bing.net/th?id=OIP.lHMlip-ttZbRF7CCwzHZNwHaEK&pid=Api&P=0&h=220',
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),

              // Deskripsi Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Pada masa tahun 1800-1930, '
                  'gula merupakan produk olahan alam paling penting di dunia. Saat itu, '
                  'Pulau Jawa merupakan pengekspor gula terbesar kedua di dunia di bawah Kuba. '
                  'Di seantero pulau terdapat 178 pabrik gula yang menjadi ladang bisnis besar bagi pemerintah Hindia Belanda. '
                  'Dari 178 pabrik gula, '
                  'Pabrik Gula (PG) Sragi adalah salah satu yang terbesar di samping PG Wonopringgo dan Kalimatie. '
                  'Pabrik gula itu berada di Kecamatan Sragi, Pekalongan, Jawa Tengah. '
                  'Pabrik Gula Sragi berdiri pada tahun 1928. '
                  'Pabrik itu masih beroperasi hingga kini walau masa produksinya hanya berkisar 3-5 bulan per tahunnya, '
                  'yaitu mulai bulan Mei hingga Agustus atau Oktober. '
                  'Biasanya untuk memulai masa produksi, dilaksanakan acara Pesta Giling. '
                  'Tradisi ini sudah dilaksanakan secara turun temurun sejak zaman nenek moyang.',
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 16),

              // Tombol Kunjungi
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kode tindakan di sini!
                },
                child: Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
