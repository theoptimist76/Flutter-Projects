import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceRoller());
}

class DiceRoller extends StatelessWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceRollerHome(),
    );
  }
}

class DiceRollerHome extends StatefulWidget {
  const DiceRollerHome({Key? key}) : super(key: key);

  @override
  _DiceRollerHomeState createState() => _DiceRollerHomeState();
}

class _DiceRollerHomeState extends State<DiceRollerHome> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roller",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset("assets/$diceNumber.png", height: 250, width: 250)),
          SizedBox(
            height: 5,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text(
              "ROLL",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text("Flutter with Bigyan!")
        ],
      ),
    );
  }
}
