import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const ROUTE ="/home" ;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var changes = false ;
  Color val ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val ,
      appBar: AppBar(
        title: Text(
          "radio widget"
        ),
        backgroundColor: changes ? Colors.orange : Colors.blue,
        actions: [
          Switch(
            value: changes ,
            onChanged: (newValue){
              setState(() {
                changes = newValue ;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            // sizedbox
            SizedBox(height: 100,) ,

            // text
            Text("orange"),

            // orange radio widget
            Radio(
              value: Colors.orange ,
              groupValue: val ,
              onChanged: (newValue){
                setState(() {
                  val = newValue ;
                });
              },
            ) ,

            Text("green"),

            // green radio widget
            Radio(
              value: Colors.green,
              groupValue: val ,
              onChanged: (newValue){
                setState(() {
                  val = newValue ;
                });
              },
            ) ,

            // radio list tile
            RadioListTile(
              value: Colors.red,
              groupValue: val,
              onChanged: (value){
                setState(() {
                  val = value ;
                });
              },
              title: Text("red"),
            ),
          ],
        ),
      ),
    );
  }
}