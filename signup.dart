import 'package:flutter/material.dart';
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('Virtual Meet'),),
            resizeToAvoidBottomPadding: false,
            body: Column(
                children: <Widget>[
                  Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 50.0),
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                  fontSize: 80.0, fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                          obscureText: false,
                        ),
                        RaisedButton(child: Text("Signup"),
                          onPressed: (){},
                          color: Colors.black,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                          splashColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ]
            )
        )
    );
  }
}