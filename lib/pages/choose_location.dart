import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocation createState() => _ChooseLocation();

}

class _ChooseLocation extends State<ChooseLocation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Choose Lcoation"),
      ),
      body: Container(
        child: Text("This is your New page"),
      ),
    );
  }
}
