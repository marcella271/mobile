
import 'package:flutter/material.dart';
import 'package:flutter_project4/Tugas/Tugas12/Telegram.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(//widget utama untuk navigasi samping
      child: ListView(//menampilkan menu drawer
        children: <Widget>[
          UserAccountsDrawerHeader(//menampilkan data pengguna
            accountName: Text("Marcella Fitri H"),
            accountEmail: Text("marcellafitri271@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image.png"),
                radius: 40,
            ),
            decoration: BoxDecoration(
              color:Colors.blue
            ),
          ),

          DrawerListTile(//membuat custom widget untuk daftra menu di dalam drawer
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacts",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: () {},
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.home,
            title: "Go to Telegram",
            onTilePressed: () {
              Navigator.pushReplacement(//mengganti ke halaman baru
                context,
                MaterialPageRoute(builder: (context) => const Telegram()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}


