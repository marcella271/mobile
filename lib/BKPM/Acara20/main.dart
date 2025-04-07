import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/Acara20/profile.dart';
import 'package:flutter_project4/BKPM/Acara20/settings.dart';
import 'package:flutter_project4/BKPM/Acara20/home.dart';
 /*void main() => runApp(MyApp());

 class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {

  int index =0;
  List<Widget> list = [
    Home(),
    Profile(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (ctx, i) {
          setState(() {
            index=i;
            Navigator.pop(ctx);
          });
        },
          /*onTap: (context, int) {
            print("Drawer item clicked!");
            Navigator.pop(context, int); // Untuk menutup drawer setelah klik
          },*/
        ),
      )
    ); 
  }
 }

 class MyDrawer extends StatelessWidget {

  final Function(BuildContext, int)? onTap;


  MyDrawer({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/image.png'),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Marcella Fitri H',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 3,),
                Text(
                  'marcellafitri271@gamil.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),
                )
              ]
            ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=>onTap?.call(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: ()=>onTap?.call(context,1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: ()=>onTap?.call(context,2),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: ()=>onTap?.call(context,0),
            ),
          ],
        ),
      ),
    );
  }
 }*/