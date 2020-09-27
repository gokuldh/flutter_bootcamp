import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();

}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
                color: Colors.blue,
        ),

              RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/newlocation');
                  },
                  icon: Icon(Icons.android),
                  label: Text("New Location"),
                  color: Colors.deepOrange,
              )
            ],
          ),
        ),
      ),
    );
  }
}