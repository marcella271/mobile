import 'package:flutter/material.dart'; 
import '/BKPM/acara19/routes.dart'; 
void main() { 
  runApp(MaterialApp( 
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute, //untuk menampilkan halaman yang sesuai
)); 
}