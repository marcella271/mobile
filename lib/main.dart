
//import 'package:flutter/material.dart';
//import 'Tugas/Tugas12/Telegram.dart';

//Acara 16

/*import 'package:flutter/material.dart';
import 'package:flutter_project4/Tugas/Tugas12/Telegram.dart';

//ACARA 16
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//kerangka utama 
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'Telegram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Telegram(), // Memulai aplikasi dengan halaman Telegram
    );
  }
}*/

//Acara 17

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: MyHomePage(),
    );
   }
 }

 class MyHomePage extends StatefulWidget {
   @override
  _MyHomePageState createState() => _MyHomePageState();
 }

 class _MyHomePageState extends State<MyHomePage> {
   int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
         leading: Icon(Icons.dashboard),//menampilkan icon
         title: Text("Belajar MaterialApp Scaffold"),
         actions: <Widget>[
           Icon(Icons.search),
        ],
         actionsIconTheme: IconThemeData(color: Colors.yellow),
         backgroundColor: Colors.pinkAccent,
         bottom: PreferredSize(
          child: Container(
             color: Colors.orange,//memberikan garis warna orange
            height: 4.0,//ketebalan garis
          ),
        preferredSize: Size.fromHeight(4.0),
        ),
         centerTitle: true,
       ),
      floatingActionButton: FloatingActionButton(//untuk menampilkan tombol melayang +
         backgroundColor: Colors.pinkAccent,
         child: Icon(Icons.add), // Menggunakan ikon tambah
         onPressed: _incrementCounter, // Memanggil fungsi ketika ditekan
       ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(16.0),//memberikan jarak pada teks 
             child: Text(
               "Counter: $_counter",
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
             ),
           ),
           Container(//membuat elemen lingkaran 
             width: 50,
            height: 50,
             decoration:
                 BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
           ),
           Container(
             width: 50,
             height: 50,
             decoration:
                 BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                     color: Colors.blueAccent, shape: BoxShape.circle),
               ),
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                     color: Colors.redAccent, shape: BoxShape.circle),
               ),
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                     color: Colors.pinkAccent, shape: BoxShape.circle),
               ),
             ],
           ),
         ],
       ),
     );
   }
 }*/

//Acara 18
/*void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: ElevatedButton(//untuk berpindah halaman
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => AboutPage());
            Navigator.push(context, route);
          },
          child: Text('Tap Untuk ke AboutPage'),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}*/


