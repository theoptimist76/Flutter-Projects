import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicTacToeHome(),
    );
  }
}

class TicTacToeHome extends StatefulWidget {
  const TicTacToeHome({Key? key}) : super(key: key);

  @override
  _TicTacToeHomeState createState() => _TicTacToeHomeState();
}

class _TicTacToeHomeState extends State<TicTacToeHome> {
  //Add icon
  var cross = Icon(
    Icons.cancel,
    size: 100,
    color: Colors.blueAccent,
  );
  var circle = Icon(
    Icons.check_circle_rounded,
    size: 100,
    color: Colors.black54,
  );
  var edit = Icon(
    Icons.radio_button_unchecked_rounded,
    size: 100,
    color: Colors.grey
  );

  bool isCross = true;
  late String message;
  late List<String> gameState;

  //Initialize Box with empty value
  @override
  void initState() {
    gameState = List.filled(9, "empty");
    this.message = "";
    super.initState();
  }

  //TO play game
  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCross) {
          this.gameState[index] = "Player 1";
        } else {
          this.gameState[index] = "Player 2";
        }
        isCross = !isCross;
        checkWin();
      });
    }
  }

  //Reset
  resetGame() {
    setState(() {
      gameState = List.filled(9, "empty");
      this.message = "";
    });
  }

  //TO get icon image
  getIcon(String title) {
    switch (title) {
      case ("empty"):
        return edit;
        break;
      case ("Player 1"):
        return cross;
        break;
      case ("Player 2"):
        return circle;
        break;
      default:
        break;
    }
  }

  //To check for Winning

  checkWin() {
    if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      setState(() {
        this.message = this.gameState[0] + " WINS";
      });
    } else if ((gameState[3] != "empty") &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = this.gameState[3] + " WINS";
      });
    } else if ((gameState[6] != "empty") &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = this.gameState[6] + " WINS";
      });
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = this.gameState[0] + " WINS";
      });
    } else if ((gameState[1] != "empty") &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = this.gameState[1] + " WINS";
      });
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = this.gameState[2] + " WINS";
      });
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = this.gameState[0] + " WINS";
      });
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = this.gameState[2] + " WINS";
      });
    } else if (!gameState.contains("empty")) {
      setState(() {
        this.message = "Game Draw";
      });
    }
  }
  //
  // var autoreset = if(checkWin() == true){
  //   return resetGame();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Tic-Tac-Toe",style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
        backgroundColor: Colors.white12,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: gameState.length,
                  itemBuilder: (context, i) => SizedBox(
                        height: 10,
                        width: 10,
                        child: MaterialButton(
                          onPressed: () {
                            this.playGame(i);
                          },
                          child: getIcon(this.gameState[i]),
                        ),
                      ))),
          Text(
            message,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: MaterialButton(
              height: 40,
              minWidth: 200,
              color: Colors.blueAccent,
              onPressed: () => resetGame(),
              child: Text(
                'Reset Game',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          Text(" Bigyan ", style: TextStyle(
            color: Colors.black12,
            fontSize: 40,
          ),)
        ],
      ),
    );
  }
}
