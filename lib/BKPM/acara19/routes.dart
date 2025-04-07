import 'package:flutter/material.dart'; 
import '/BKPM/acara19/screen.dart'; 
class RouteGenerator { 
  static Route<dynamic> generateRoute(RouteSettings settings) { 
    
    switch (settings.name) { //kondisi
      case '/': //menampilkan home page
        return MaterialPageRoute(builder: (_) => HomePage()); 
      case '/about': //menampilkan about page
        return MaterialPageRoute(builder: (_) => AboutPage()); 
         
      default: 
        return _errorRoute(); 
    } 
  } 
  static Route<dynamic> _errorRoute() { 
    return MaterialPageRoute(builder: (_) { 
      return Scaffold( 
        appBar: AppBar(title: Text("Error")), 
        body: Center(child: Text('Error page')), 
      ); 
    }); 
  } 
} 