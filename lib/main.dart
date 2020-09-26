import 'package:flutter/material.dart';
import 'strings.dart';

void main () =>runApp(FlutterBootcamp());

class FlutterBootcamp extends StatelessWidget{

  Widget build(BuildContext context){

    return MaterialApp(
      title: Strings.apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.bartitle),
          backgroundColor: Colors.deepOrange,
        ),
      body: Container(
        color: Colors.grey[200] ,
        child: Text("Skillto"),
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        margin: EdgeInsets.fromLTRB(50, 100, 1, 1),
        ),

        floatingActionButton: FloatingActionButton(
          child: Text("Click"),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            print("Thank you for clicking Me!");
          },
        ),
      ),
    );
  }
}

