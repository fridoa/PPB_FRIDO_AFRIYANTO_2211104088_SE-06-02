// lib/pages/detailPage.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/product.dart';

// Method untuk format Rupiah
String formatRupiah(double price) {
  final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
  return formatCurrency.format(price);
}

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: 150, // Atur lebar gambar
              height: 150, // Atur tinggi gambar
              fit: BoxFit.cover,
            ),
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              formatRupiah(product.price),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 16),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
