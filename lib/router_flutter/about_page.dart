import 'package:flutter/material.dart';
import 'package:pertemuan3/router_flutter/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      drawer: const Sidemenu(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Header Gambar
          Container(
            height: 500, 
            width: 500, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('Reviltan_LogoBlack.png'),
                fit:
                    BoxFit.cover, // Atur sesuai kebutuhan: cover, contain, etc.
              ),
            ),
          ),

          const SizedBox(height: 20),
          // Judul Aplikasi
          const Text(
            'LEVI MOVIES',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          // Deskripsi Aplikasi
          const Text(
            'Aplikasi ini membantu kamu melacak film favoritmu, menonton trailer, serta menemukan informasi terkini mengenai film-film terbaru di bioskop.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Fitur Aplikasi
          const Text(
            'Fitur Utama:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // List Fitur
          const ListTile(
            leading: Icon(Icons.movie, color: Colors.purple),
            title: Text('Lacak film favoritmu'),
          ),
          const ListTile(
            leading: Icon(Icons.star, color: Colors.orange),
            title: Text('Lihat rating dan ulasan dari penonton'),
          ),
          const ListTile(
            leading: Icon(Icons.play_circle_filled, color: Colors.red),
            title: Text('Tonton trailer film terbaru'),
          ),
          const ListTile(
            leading: Icon(Icons.date_range, color: Colors.blue),
            title: Text('Informasi tanggal rilis film'),
          ),
          const SizedBox(height: 20),
          // Footer
          const Text(
            'Terima kasih telah menggunakan aplikasi kami. Kami berharap kamu menemukan film favoritmu!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
