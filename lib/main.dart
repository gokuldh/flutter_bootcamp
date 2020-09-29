import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';


void main () =>runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyApp();
  }

}


class _MyApp extends State<MyApp>{

  static const duration = const Duration(seconds: 1);

  int secondspassed = 0;
  bool isactive = false;
  Timer  timer;

  void ticker(){
    if (isactive) {
      setState(() {
        secondspassed = secondspassed +  1;
      });
    }
  }

  @override
  void initState(){
    timer = Timer.periodic(duration, (Timer t)
    {
      ticker();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    int seconds = secondspassed % 60;
    int minutes = secondspassed ~/ 60;
    int hours = secondspassed ~/ (60*60);

    return MaterialApp(
      title: 'Timer App',
      home: Scaffold(
        appBar: AppBar(
            title: Text("Timer App")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TimerContainer(
                      label: 'H',
                    value: hours.toString(),
                  ),
                  TimerContainer(
                      label: 'M',
                      value: minutes.toString(),
                  ),
                  TimerContainer(
                      label: 'S',
                    value: seconds.toString(),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top:20),
                child: RaisedButton(
                  child: Text (isactive ? 'Stop': 'Start'),
                  onPressed: () {
                    setState(() {
                      isactive = !isactive;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class TimerContainer extends StatelessWidget{

  TimerContainer({this.label, this.value});
  String label;
  String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10),
        color: Colors.black54
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "$value",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50
            ),
          ),
          Text(
            "$label",
            style: TextStyle(
              color: Colors.white,
              fontSize: 60
            ),
          )
        ],
      ),
    );
  }
}




