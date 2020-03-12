import 'package:flutter/material.dart';
import 'package:flutter_app3/Verifying.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override

  final _kTabs = <Tab>[
    Tab(text: "Verifying"),
    Tab(text: "Resolved"),
    Tab(text: "Pending"),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back),
          title: Text("Dashboard"),
          bottom: TabBar(
            tabs: _kTabs,
            labelColor: Colors.blueGrey,
          ),
        ),
        body: TabBarView(children: [
          verifying(),
          Resolved(),
          Pending(),
        ]),
      ),
    );
  }
}
