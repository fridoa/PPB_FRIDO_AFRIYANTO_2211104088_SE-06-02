import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Saya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profil'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.grey[800], // Menambahkan warna latar belakang abu-abu tua
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 1. Gambar Profil dan Nama (berada di tengah)
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'), // Ganti dengan path gambar profil
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Frido Afriyanto',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white), // Ubah warna teks menjadi putih
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // 2. NIM
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NIM:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 5),
                Text(
                  '2211104088',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 10),
                Divider(
                    color: Colors.white), // Ubah warna pembatas menjadi putih
              ],
            ),

            // 3. Email
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 5),
                Text(
                  'fridoafriyanto3@gmail.com',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 10),
                Divider(
                    color: Colors.white), // Ubah warna pembatas menjadi putih
              ],
            ),

            // 4. Tanggal Lahir
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tanggal Lahir:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 5),
                Text(
                  '8 April 2004',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 10),
                Divider(
                    color: Colors.white), // Ubah warna pembatas menjadi putih
              ],
            ),

            // 5. Jenis Kelamin
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jenis Kelamin:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 5),
                Text(
                  'Laki-laki',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 10),
                Divider(
                    color: Colors.white), // Ubah warna pembatas menjadi putih
              ],
            ),

            // 6. Deskripsi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 5),
                Text(
                  'Saya seorang mahasiswa S1 Software Engineering di Telkom University Purwokerto.',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white), // Ubah warna teks menjadi putih
                ),
                SizedBox(height: 10),
                Divider(
                    color: Colors.white), // Ubah warna pembatas menjadi putih
              ],
            ),

            // 7. Tombol untuk Menghubungi
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                child: Text("Hubungi Saya"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
