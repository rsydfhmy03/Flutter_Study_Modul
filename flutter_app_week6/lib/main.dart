import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //add code acr 22
  @override
  final List<String> gambar = [
    "chimmy.gif",
    "cooky.gif",
    "koya.gif",
    "mang.gif",
    "rj.gif",
    "shooky.gif",
    "tata.gif",
    "van.gif",
  ];

  static const Map<String, Color> colors = {
    'chimmy.gif': Color(0xFF2DB569),
    'cooky.gif': Color(0xFF2DB569),
    'koya.gif': Color(0xFF2DB569),
    'mang.gif': Color(0xFF2DB569),
    'rj.gif': Color(0xFF2DB569),
    'shooky.gif': Color(0xFF2DB569),
    'tata.gif': Color(0xFF2DB569),
    'van.gif': Color(0xFF2DB569),
  };
  //acr21
  Widget build(BuildContext context) {
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
        //add acr 22
        child: new PageView.builder(
          controller: new PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i) {
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
                                  "img/${gambar[i]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () => Navigator.of(context).push(
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Halamandua(
                                          gambar: gambar[i],
                                          colors: colors.values.elementAt(i),
                                        ))),
                          ),
                        ))
                  ],
                ),
              ),
            );
          },
        ),
        //end code acr 22
      ),
    );
  }
}

class Halamandua extends StatelessWidget {
  Halamandua({required this.gambar, required this.colors});
  final String gambar;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BT21"),
        backgroundColor: Colors.purpleAccent,
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
                                "img/$gambar",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
