import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TODOAPP(),
    );
  }
}

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  late String value = '';
  var listTODO = [''];

  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addTODO(value);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(title: Text('TODO APP'), centerTitle: true),
        body: ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        showCursor: true,
                        cursorHeight: 30.0,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: ' Please enter item to add'),
                        onChanged: (val) {
                          value = val;
                        },
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.check_circle_rounded),
                      title: Text(
                        '${listTODO[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
            }));
  }
}
