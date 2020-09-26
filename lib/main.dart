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
      body: Column(
        children: [
          Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.deepOrange,
                    child: Text("A"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text("B"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.green,
                    child: Text("C"),
                  ),
                ),
              ],
            ),

          Divider(
            color: Colors.grey,
            height: 20,
          ),

            Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.deepOrange,
                  child: Text("A"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text("B"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Text("C"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                  child: Container(
                  padding: EdgeInsets.all(20),


              )),

              Expanded(
                flex: 1,
                  child: Container(
                padding: EdgeInsets.all(20),

              )),
              Expanded(
                flex: 1,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/star.jpg'),
                    radius: 20,
                  ),
                ),
              ),
            ],
          ),
        ],

      ),


        /*
      Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
          Container(
            color: Colors.grey[200] ,
            child: Text("Skillto Test"),
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            ),
            Text("Hey Skillto"),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: (){} ,
                  color: Colors.deepOrange,
                  child: Text("Click Me"),
                ),
                Text("Hey Skillto"),
              ],
            ),
          ],
        ),

        */
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

