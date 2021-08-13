import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,

        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Welcome " + username.padLeft(5),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 300.0,
            ),
            Text(
              "-BIGYAN-",
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
