import 'package:flutter/material.dart';
import 'strings.dart';

void main () =>runApp(FlutterBootcamp());

class FlutterBootcamp extends StatelessWidget{

  Widget build(BuildContext context){

    return MaterialApp(
      title: Strings.apptitle,
      home: Scaffold(appBar: AppBar(title: Text(Strings.bartitle),),
      body: Center(child: Text("Welcome to App",style: TextStyle(color: Colors.deepOrange, fontSize: 30.0),),),),
    );
  }
}

