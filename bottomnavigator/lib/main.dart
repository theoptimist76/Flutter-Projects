import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom Navigation bar",
    home: MainPage()));

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> myWidget = <Widget>[
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        color: Colors.red,
        child: Center(
          child: Text(
            "Welcome To Home",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 70,
        color: Colors.blue,
        child: Center(
          child: Text(
            "Welcome To Contact",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 90,
        color: Colors.green,
        child: Center(
          child: Text(
            "Welcome To Settings",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    )
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
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.grey,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(
        child: myWidget.elementAt(_selectedIndex),
      ),
    );
  }
}
