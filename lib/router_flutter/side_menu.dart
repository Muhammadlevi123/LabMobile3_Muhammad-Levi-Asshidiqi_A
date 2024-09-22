import 'package:flutter/material.dart';
import 'package:pertemuan3/router_flutter/home_page.dart';
import 'about_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  Future<void> _logout(BuildContext context) async {
    // Hapus username dari shared preferences (jika ada)
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    // Navigasi ke halaman login (ganti '/login' dengan route ke halaman login Anda)
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Sidemenu'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigasi ke halaman home
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Navigasi ke halaman about
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          // garis
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Navigasi ke halaman login
              Navigator.of(context).pushReplacementNamed(
                  '/'); // Atau '/login' jika Anda mendefinisikan rute tersebut
            },
          ),
        ],
      ),
    );
  }
}
