import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Dialer App',
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Bigyan Rijal", "Bimal Sharma", "Damodar Sharma","Himal","Ramesh Gautam"];
  var phoneNumber = ["9812345611","9876543211","9876543211","9876543211","9876543211"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Phone Dialer App"),
      ),
      body: ListView.builder(
      itemCount: contactList.length,
        itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text(contactList[index]),
          subtitle: Text(phoneNumber[index]),
          trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: (){
              launch("tel://${phoneNumber[index]}");
            },
          ),
        );
      },
    ));
  }
}
