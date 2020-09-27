import 'package:flutter/material.dart';
import 'strings.dart';

void main () =>runApp(MaterialApp(
  home: FlutterBootcamp()
));

class FlutterBootcamp extends StatefulWidget{
  @override
  _FlutterBootcamp createState() => _FlutterBootcamp();
}

class _FlutterBootcamp extends State<FlutterBootcamp>{

  List<String> notes = [
    "Take out the Car",
    "Get Grocery from the Store",
    "Finish your Project!! Get Grocery from the Store Take out the Car"
  ];

  Widget cardTemplate(note) {
    return Card(
      margin: EdgeInsets.all(6),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              note
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Notes App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(

        children: notes.map((note) => cardTemplate(note)).toList(),
      ),
    );
  }
}



