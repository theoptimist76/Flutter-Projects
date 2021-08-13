import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Bigyan Rijal"),
                accountEmail: Text("bigyan@gmail.com")),
            ListTile(
              title: Text("Purchase", style: GoogleFonts.lato(),),
              subtitle: Text("Purchase Items"),
              leading: Icon(Icons.shop),
              onTap: (){
                print("Purchase Pressed");
              }),
              ListTile(
                title: Text("Sales"),
                subtitle: Text("Sales Items"),
                leading: Icon(Icons.shop),
                onTap: (){
                  print("Sales Pressed");
                }),
            ListTile(
              title: Text("Report"),
              subtitle: Text("Report Items"),
              leading: Icon(Icons.shop),
              onTap: (){
                print("Report Pressed");
              }),
            ListTile(
              title: Text("User"),
              subtitle: Text("User Items"),
              leading: Icon(Icons.supervised_user_circle),
              onTap: (){
                print("User Pressed");
              },
            )
          ],
        ),
      ),
    );
  }
}
