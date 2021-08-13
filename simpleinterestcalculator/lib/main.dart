import 'package:flutter/material.dart';

void main() => runApp(SimpleInterestCalculator());

class SimpleInterestCalculator extends StatelessWidget {
  const SimpleInterestCalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Interest Calculator",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String principal = '';
  String time = '';
  String rate = '';
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Simple Interest Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              onChanged: (val) {
                principal = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Principal',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 5.0,
            ),
            TextField(
              onChanged: (val) {
                time = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Time',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 5.0,
            ),
            TextField(
              onChanged: (val) {
                rate = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Rate',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(
              height: 15.0,
            ),
            MaterialButton(
              color: Colors.red,
              height: 50.0,
              onPressed: () {
                setState(() {
                  result = (double.parse(principal) *
                      double.parse(time) *
                      double.parse(rate) /
                      100).toString();
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.red)),
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text(
                "The Simple Interest is Rs $result",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
