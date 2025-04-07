
import 'package:flutter/material.dart';
import 'package:flutter_project4/Tugas/Tugas12/DrawerScreen.dart';
import 'package:flutter_project4/Tugas/Tugas12/Models/Chart_model.dart';

class Telegram extends StatefulWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Key untuk Scaffold

  @override
  Widget build(BuildContext context) {
    debugPrint('Telegram dibangun ulang'); // Debugging
    return Scaffold(
      key: _scaffoldKey, // Gunakan GlobalKey untuk Scaffold
      appBar: AppBar(//menampilkan judul
        title: const Text("Telegram"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer(); // Buka Drawer dengan aman
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerScreen(key: ValueKey("drawer")), // Tambahkan Key agar tidak terus rebuild
      body: ListView.separated(//menampilkan daftar cht
        itemBuilder: (ctx, i) {
          return ListTile(
            key: ValueKey(items[i].name), // Tambahkan Key unik untuk menghindari duplikasi
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(items[i].profileUrl),
              onBackgroundImageError: (_, __) {
                debugPrint("Failed to load image for ${items[i].name}");
              },
              //child: const Icon(Icons.person), // Gambar default jikaa gagal dimuat
            ),
            title: Text(//nama pengguna
              items[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[i].message),//pesan terakhir
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i) => const Divider(),
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(//tombol untuk membuat pesan batu
        child: const Icon(Icons.create, color: Colors.white),
        backgroundColor: const Color(0xFF65a9e0),
        onPressed: () {},
      ),
    );
  }
}


