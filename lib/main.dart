import 'package:flutter/material.dart';
import 'Team.dart';
import 'crausel.dart';
//import 'package:flutter_app3/Team.dart';
//import 'Dashboard.dart';
//import 'login.dart';
//import 'Verifying.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Dashboard(),
      home: Team(),
      //home: crsl(),
      //home: verifying(),
    );
  }
}

