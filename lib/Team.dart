import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'login.dart';

final List<String> imgList = [
// new AssetImage('assets/Mdulogo.png'),
  'https://icons-for-free.com/iconfiles/png/512/boy+man+person+user+woman+icon-1320085967769585303.png',
  'https://icons-for-free.com/iconfiles/png/128/boy+man+max+icon-1320085967580513624.png',
  'https://upload.wikimedia.org/wikipedia/en/c/c8/Maharshi_Dayanand_University_logo.png',


  /*'assets/Mdulogo.png',
  'assets/Mdulogo.png',
  'assets/Mdulogo.png'*/
];

final Widget placeholder = Container(color: Colors.grey);
final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Stack(children: <Widget>[
          Image.network(i, fit: BoxFit.cover, width: 300),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(100, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  int _current = 0;

  //List<verifying> items=[verifying()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),
      body: SingleChildScrollView(
//        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            CarouselSlider(
              items: child,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
            /*Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Mdulogo.png'),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Mdulogo.png'),
                    radius: 70,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Mdulogo.png'),
                    radius: 50,
                  ),
                ],
              ),
            ),*/
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 30,
              width: 380,
              decoration: BoxDecoration(

                gradient: LinearGradient(
                    colors:
                    [Colors.amber, Colors.pink,Colors.blue],
                    /*begin: Alignment.center,
                    end: Alignment.bottomRight,
                    stops: [.1, 1]*/),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Todays Top Complaints',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 2),
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
                                  SizedBox(
                                      width: 80.0,
                                      child: Image.asset('assets/Mdulogo.png',height: 20,width: 20,)),
                                ],
                              ),
                              Divider(
                                  color: Colors.blueGrey, height: 5, thickness: 1),
                              Row(
                                children: <Widget>[
                                  Text(
                                    ' Does the problem resolved or not ?',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Firefox Monitor monitors if your email has appeared in a known data '
                                'beach and alerts you if appears in a new breach. Firefox Monitor monitors '
                                'if you email has appeared in a known data breach and alerts '
                                'you if it appears in a new breach.',
                                textAlign: TextAlign.justify,
                              ),
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
                                          side: BorderSide(
                                              color: Colors.green, width: 2),
                                          borderRadius:
                                              new BorderRadius.circular(18.0),
                                        ),
                                        onPressed: () {},
                                      ),
                                      RaisedButton(
                                          child: Text('Edit Details'),
                                          color: Colors.deepOrange,
                                          textColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(18.0),
                                          ),
                                          onPressed: () {}),
                                      RaisedButton(
                                          child: Text('Not Resolved'),
                                          color: Colors.blue,
                                          textColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(18.0),
                                          ),
                                          onPressed: () {
                                           /* Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> login()
                                            ));*/
                                          }),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
