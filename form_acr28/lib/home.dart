import 'package:flutter/material.dart';
import 'package:form_acr28/drawerscreen.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> meroWidget = <Widget>[
    HamroOption("Welcome to Home", const Color(0xFF3944F7)),
    HamroOption("Welcome to Search page", const Color(0xFFB4161B)),
    HamroOption("Welcome to Setting Account", const Color(0xFF3DBE29)),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF35BDD0),
        title: const Text("Flutter App acr 28"),
      ),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Grup"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      drawer: DrawerScreen(),
    );
  }
}

class HamroOption extends StatelessWidget {
  final String title;
  final Color color;
  HamroOption(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
