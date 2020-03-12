import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class verifying extends StatefulWidget {
  @override
  _verifyingState createState() => _verifyingState();
}

class _verifyingState extends State<verifying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 5,
          shrinkWrap:true,
          itemBuilder: (context, index){
            return   Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            ' Issue :',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(' Hoste wifi not working'),
                          Text(
                            ' | 2hrs ago',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      SizedBox(width: 120.0, child: Icon(Icons.account_circle)),
                    ],
                  ),
                  Divider(color: Colors.blueGrey, height: 5, thickness: 1),
                  Row(
                    children: <Widget>[
                      Text(
                        'Does the problem resolved or not?.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Firefox Monitor monitors if your email has appeared in a known data'
                          'beach and alerts you if appears in a new breach. Firefox Monitor monitors'
                          'if you email has appeared in a known data breach and alerts'
                          'you if it appears in a new breach.'),
                  Divider(
                    thickness: 1,
                    color: Colors.blueGrey,
                    height: 5,
                  ),
                  Column(
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Resolved'),
                            color: Colors.green,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.green, width: 2),
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {},
                          ),
                          RaisedButton(
                              child: Text('Edit Details'),
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {}),
                          RaisedButton(
                              child: Text('Not Resolved'),
                              color: Colors.red,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        )
    );
  }
}

class Resolved extends StatefulWidget {
  @override
  _ResolvedState createState() => _ResolvedState();
}
var _myColorOne = Colors.grey;
var _myColorTwo = Colors.grey;
var _myColorThree = Colors.grey;
var _myColorFour = Colors.grey;
var _myColorFive = Colors.grey;

class _ResolvedState extends State<Resolved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (context, index ) {
          return Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          ' Issue :',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(' Hoste wifi not working'),
                        Text(
                          ' | 2hrs ago',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                    SizedBox(width: 120.0, child: Icon(Icons.account_circle)),
                  ],
                ),
                Divider(color: Colors.blueGrey, height: 5, thickness: 1),
                Row(
                  children: <Widget>[
                    Text(
                      'Thank You For Rating',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Firefox Monitor monitors if your email has appeared in a known data'
                        'beach and alerts you if appears in a new breach. Firefox Monitor monitors'
                        'if you email has appeared in a known data breach and alerts'
                        'you if it appears in a new breach.'),
                Divider(
                  thickness: 1,
                  color: Colors.blueGrey,
                  height: 5,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(icon: new Icon(Icons.star),
                          onPressed: ()=>setState((){
                        _myColorOne=Colors.blue;
                        _myColorTwo=Colors.grey;
                        _myColorThree=Colors.grey;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                          }),color: _myColorOne,),
                      new IconButton(icon: new Icon(Icons.star),
                        onPressed: ()=>setState((){
                          _myColorOne=Colors.blue;
                          _myColorTwo=Colors.blue;
                          _myColorThree=Colors.grey;
                          _myColorFour=Colors.grey;
                          _myColorFive=Colors.grey;
                        }),color: _myColorTwo,),
                      new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                        _myColorOne=Colors.blue;
                        _myColorTwo=Colors.blue;
                        _myColorThree=Colors.blue;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                      }),color: _myColorThree,),
                      new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                        _myColorOne=Colors.blue;
                        _myColorTwo=Colors.blue;
                        _myColorThree=Colors.blue;
                        _myColorFour=Colors.blue;
                        _myColorFive=Colors.grey;
                      }),color: _myColorFour,),
                      new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                        _myColorOne=Colors.blue;
                        _myColorTwo=Colors.blue;
                        _myColorThree=Colors.blue;
                        _myColorFour=Colors.blue;
                        _myColorFive=Colors.blue;
                      }),color: _myColorFive,),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context ,index){
            return Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            ' Issue :',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(' Hoste wifi not working'),
                          Text(
                            ' | 2hrs ago',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      SizedBox(width: 120.0, child: Icon(Icons.account_circle)),
                    ],
                  ),
                  Divider(color: Colors.blueGrey, height: 5, thickness: 1),
                  Row(
                    children: <Widget>[
                      Text(
                        'Our Team is working on this issue.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Firefox Monitor monitors if your email has appeared in a known data'
                          'beach and alerts you if appears in a new breach. Firefox Monitor monitors'
                          'if you email has appeared in a known data breach and alerts'
                          'you if it appears in a new breach.'),
                  Divider(
                    thickness: 1,
                    color: Colors.blueGrey,
                    height: 5,
                  ),
                  Column(
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Deadline: 12 feb'),
                            color: Colors.white,
                            textColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.green, width: 2),
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {},
                          ),
                          RaisedButton(
                              child: Text('Edit Details'),
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {}),
                          RaisedButton(
                              child: Text('Not Resolved'),
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
      )
    );
  }
}
