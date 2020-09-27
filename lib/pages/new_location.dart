import 'package:flutter/material.dart';

class NewLocation extends StatefulWidget {
  @override
  _NewLocation createState() => _NewLocation();

}

class _NewLocation extends State<NewLocation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("New Location"),
      ),
      body: Container(
        child: Text("This is your New page"),
      ),
    );
  }
}
