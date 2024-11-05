// lib/pages/myPage.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/product.dart';
import 'detailPage.dart';

class MyPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Samba OG W',
      description:
          'Inspired by an iconic indoor football shoe from the 1950s, these modernized classic adidas shoes are made for life on the move..',
      price: 1600000,
      imageUrl:
          'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/22d20b6d90a84fb09426e20c92de8ee8_9366/Samba_OG_Shoes_Blue_IG1968_15_hover_standard.jpg',
    ),
    Product(
      id: '2',
      name: 'Samba OG Shoes',
      description:
          'Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone closet - on and off the pitch.',
      price: 1600000,
      imageUrl:
          'https://assets.adidas.com/images/w_85,h_85,f_auto,q_auto,fl_lossy,c_fill,g_auto/9b983d5bc09a4d4aba39a8bf011869ba_9366/samba-og-shoes.jpg',
    ),
    Product(
      id: '3',
      name: 'Gazelle Indoor Shoes',
      description:
          'Once a training shoe, now a timeless icon, these adidas Gazelle shoes pair a suede upper with a gum rubber outsole for a retro look thats perfect for casual wear. The contrast heel tab and 3-Stripes complete the stylish design. Whether you are walking city streets or socializing with friends, these shoes keep you looking good and feeling great.',
      price: 1900000,
      imageUrl:
          'https://assets.adidas.com/images/w_85,h_85,f_auto,q_auto,fl_lossy,c_fill,g_auto/911ec048adc4471f938af50867c2ad85_9366/gazelle-indoor-shoes.jpg',
    ),
    Product(
      id: '4',
      name: 'Handball Spezial Shoes',
      description:
          'The adidas Spezial shoes were introduced in 1979 for handball athletes, but it wasnt long before the undeniable style paved a path beyond the indoor court. This pair celebrates that rich past with signature design elements ranging from the suede upper to the T-shaped toe box. Vibrant modern color combinations add standout looks. Lace them up and express your style with a vintage flare.',
      price: 1750000,
      imageUrl:
          'https://assets.adidas.com/images/w_85,h_85,f_auto,q_auto,fl_lossy,c_fill,g_auto/cffa62954b7e49bebb8b0df5c3de25b4_9366/handball-spezial-shoes.jpg',
    ),
    Product(
      id: '5',
      name: 'Samba OG Shoes',
      description:
          'The adidas Samba OG Shoes take you back to the glory days of the 70s train travel across Europe. These iconic kicks are designed for life on the move. A smooth leather upper and suede accents evoke a vintage vibe, while a custom graphic on the insole adds a modern touch. ',
      price: 1600000,
      imageUrl:
          'https://assets.adidas.com/images/w_85,h_85,f_auto,q_auto,fl_lossy,c_fill,g_auto/2db7ad19042a4072a347130800f7518e_9366/Samba_OG_Shoes_White_ID1381_00_plp_standard.jpg',
    ),
  ];

  // Method untuk format Rupiah
  String formatRupiah(double price) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0), // Menambahkan padding di atas gambar
              child: Image.network(
                product.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(product.name),
            subtitle: Text(formatRupiah(product.price.toDouble())),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
