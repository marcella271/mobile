import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Home extends StatefulWidget{
  @override
    _HomeState createState() => _HomeState();
}
 class _HomeState extends State<Home>{

  //ACARA 21
    /*@override
    Widget build(BuildContext context){
      return new Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.white,
                Colors.purpleAccent,
                Colors.deepPurple
              ])),
        ),
      );
    }*/
    
    //ACARA 22
    final List<String> gambar = [
      "image.png",
      "image1.png",
      "image2.png",
      "image3.png",
      "image4.png",
      "image5.png",
      "image6.png",
      "login.png"
    ];

    static const Map<String, Color> colors = {
      'image.png' : Color(0xFF2DB569),
      'image1.png' : Color(0xFFF386B8),
      'image2.png' : Color(0xFF45CAF5),
      'image3.png' : Color(0xFFB19ECB),
      'image4.png' : Color(0xFFF58E4C),
      'image5.png' : Color(0xFF46C1BE),
      'image6.png' : Color(0xFFFFEA0E),
      'login.png' : Color(0xFFDBE4E9)
    };

    @override
    Widget build(BuildContext context) {
      timeDilation = 5.0;
      return new Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [Colors.white, Colors.purple, Colors.deepPurple]),
          ),
          child: new PageView.builder(
            controller: new PageController(viewportFraction: 0.8),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int i){
              return new Padding(
                padding: 
                    new EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
                child: new Material(
                  elevation: 8.0,
                  child: new Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      new Hero(
                        tag: gambar[i],
                        child: new Material(
                        child: new InkWell(
                          child: new Flexible(
                            flex: 1,
                            child: Container(
                              color: colors.values.elementAt(i),
                              child: new Image.asset(
                                "images/${gambar[i]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          onTap:() => Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (BuildContext context) => 
                                  new Halamandua(
                                    gambar: gambar[i],
                                    colors:
                                        colors.values.elementAt(i),
                                  ))),
                        ),
                        )),
                    ],
                  ),
                ));
            }),
        ),
      );
    }
  }

  /*class Halamandua extends StatelessWidget {
    Halamandua({required this.gambar, required this.colors});
    final String gambar;
    final Color colors;
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("BT21"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  center: Alignment.center,
                  colors: [Colors.purple, Colors.white, Colors.deepPurple])),
            ),
            new Center(
              child: new Hero(
                tag: gambar, 
                child: new ClipOval(
                  child: new SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: new Material(
                      child: new InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: new Flexible(
                          flex: 1,
                          child: Container(
                            color: colors,
                            child: new Image.asset(
                              "images/$gambar",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            )
          ],
        )
      );
    }
  }*/

  //ACARA 23
class Halamandua extends StatefulWidget{
  Halamandua({required this.gambar, required this.colors});
  final String gambar;
  final Color colors;

  @override
  _HalamanduaState createState() => _HalamanduaState();
}

class _HalamanduaState extends State<Halamandua> {
  Color warna = Colors.grey;

  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BT21"),
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          new PopupMenuButton<Pilihan>(
            //icon: Icon(Icons.more_vert),
            onSelected: _pilihannya,
            itemBuilder: (BuildContext context) {
              //debugPrint("PopupMenuItem dibuat");
              return listPilihan.map((Pilihan x) {
                return  PopupMenuItem<Pilihan>(
                  child:  Text(x.teks),
                  value: x,
                  );
              }
              ).toList();
            },
            )
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              gradient: new RadialGradient(
                center: Alignment.center,
                colors: [Colors.purple, warna, Colors.deepPurple])),
          ),
          new Center(
            child: new Hero(
              tag: widget.gambar,
              child: new ClipOval(
                child: new SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: new Material(
                    child: new InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: new Flexible(
                        flex: 1,
                        child: Container(
                          color: widget.colors,
                          child: new Image.asset(
                            "images/${widget.gambar}",
                            fit: BoxFit.cover,
                          ),
                        )),
                    ),
                  ),
                ),
              ),
            ))
        ],
      ),
    );
  }
}
class Pilihan {
  const Pilihan({required this.teks, required this.warna});
  final String teks;
  final Color warna;
}

List<Pilihan> listPilihan = const <Pilihan>[
  const Pilihan(teks: "Red", warna: Colors.red),
  const Pilihan(teks: "Green", warna: Colors.green),
  const Pilihan(teks: "Blue", warna: Colors.blue),
];

