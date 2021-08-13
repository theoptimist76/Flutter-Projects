import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nice App'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Image.network(
            'https://picsum.photos/250?image=9',
            height: 250,
            width: 250,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Theme: Coding is fun',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Hope: Learn Flutter', style: TextStyle(fontSize: 19),),
          SizedBox(
            height: 5,
          ),
          Text(
            'Email: learnflutter@gmail.com',
          style: TextStyle(fontSize: 19)),
          SizedBox(
            height: 400,
          ),
          Text(
            'Developed with <3',
              style: TextStyle(fontSize: 19)
          )
        ],
      ),
    ),
  ));
}
