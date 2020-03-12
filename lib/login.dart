import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  bool _isSelect = false;

  void _radio() {
    setState(() {
      _isSelect = !_isSelect;
    });
  }

  // bool showTooltip = false;
  bool isVisible = true;

  Widget radioButton(bool _isSelect)=> Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
        border: Border.all(width: 2.0,color: Colors.black),
    ),
    child: _isSelect
      ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black
      ),
    )
        : Container(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/Mdulogo.png',
                  height: 200,
                  width: 150,
                ),
                Card(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 1.0,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Enter Your Email',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your email id";
                          }
                          return null;
                        },

                        /* suffixIcon: IconButton(
                            icon: Icon(Icons.error, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                showTooltip = !showTooltip;
                              });
                            },
                          ),*/

                        /*validator:(value) {
                          if (value.isEmpty) {
                            return 'he';
                          }
                        },*/
                      ),
                      TextFormField(
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Password Should Minimum 6 Character';
                          }
                          _formKey.currentState.save();
                          return null;
                        },
                        obscureText: isVisible,
                        onChanged: (String value) {},
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                          ),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter Your Password',
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelect),
                          ),
                          Spacer(),
                          Text(
                            'Remember Me',
                            style: TextStyle(color: Colors.redAccent,fontSize: 14.0,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0)),
                          color: Colors.blue,
                          child: Text(
                            'Signin',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            _formKey.currentState.validate()
                                ? Scaffold.of(context).showSnackBar(
                                    SnackBar(content: Text("this is valid")))
                                : Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text("this is not valid")));
                            /*if (_formKey.currentState.validate()) {
                           Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('hello')))
                         Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('hi')));
                        }*/
                          },
                        ),
                      ),
                      /*RaisedButton(
                        onPressed: () {
                          _formKey.currentState.validate()
                              ? Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('hi')))
                        : Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('hello')));
                        },
                        child:  Text('submit'),
                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          /* FlatButton(
          textColor: Colors.redAccent,
              onPressed: () {},
              child: Text(
                'Remember Me',
              )),*/
                          FlatButton(
                            textColor: Colors.redAccent,
                            child: Text(
                              'Forget Password?',
                            ),
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ForgetPassword"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Card(
          margin: EdgeInsets.all(50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 1.0,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone Number/Email',
                    hintText: 'Enter Your Phone Number or Email'),
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('LoginPage'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
