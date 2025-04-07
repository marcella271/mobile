import 'package:flutter/material.dart'; 
class HomePage extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Belajar Routing'), 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            ElevatedButton( 
              onPressed: () { 
                Navigator.pushNamed(context, '/about'); //tombol 1
              }, 
              child: Text('Tap Untuk ke AboutPage'), 
            ), 

            SizedBox(height: 16.0),
            ElevatedButton( 
              onPressed: () { 
                Navigator.pushNamed(context, '/halaman-404'); //tombol 2
              }, 
              child: Text('Tap Halaman lain'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 

class AboutPage extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( //menampilkan halaman tentang aplikasi
        title: Text('Tentang Aplikasi'), 
      ), 
      body: Center( 
        child: ElevatedButton( 
          onPressed: () { 
            Navigator.pop(context); 
          }, 
          child: Text('Kembali'), //button kembali
        ), 
      ), 
    ); 
  } 
}