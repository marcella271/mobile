
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  @override
  _DasState createState() => _DasState();
}
  class _DasState extends State<Dashboard> {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text('Dashboard')),
        body: Center(
          child: Text('Dashboard Screen', style: TextStyle(fontSize: 40)),
        ),
      );
    }
  }
