
import 'package:flutter/material.dart';
import 'package:flutter_radio/Activities/Home.dart';
import 'package:flutter_radio/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE,
      routes: route ,
    );
  }
}