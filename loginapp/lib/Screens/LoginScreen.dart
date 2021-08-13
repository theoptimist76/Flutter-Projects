import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/Screens/HomeScreen.dart';

TextStyle myStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    TextField usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    TextField passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        onPressed: () {
          if (username == "Bigyan" && password == "a") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("Login Failed");
          }
        },
        child: Text(
          "LOGIN",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        minWidth: MediaQuery.of(context).size.width,
        height: 50,
        padding: EdgeInsets.all(20.0),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.supervised_user_circle, size: 100),
                      SizedBox(
                        height: 110.0,
                      ),
                      usernameField,
                      SizedBox(
                        height: 10.0,
                      ),
                      passwordField,
                      SizedBox(
                        height: 40.0,
                      ),
                      myLoginButton,
                      SizedBox(
                        height: 300.0,
                      ),
                      Text(
                        "-BIGYAN-",
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
