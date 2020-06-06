import 'package:virtualmeet_app/signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Meet',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) =>MyHomePage(),
            '/SignUp': (context) => SignUpPage(),
          },
        );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  void validateAndSave() {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
     appBar: AppBar(title: Text('Virtual Meet')),
     body: Column(
       children: <Widget>[
         Container(
           child:Stack(
         children: <Widget>[
         Container(
           padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 50.0),
           child: Text(
             'SignIn',
             style: TextStyle(
               fontSize: 80.0,fontWeight: FontWeight.bold
             ),
           ),
         )
       ],
    )
    ),
         Container(
           padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
           child: Column(
             children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                   labelText: 'Phone Number',
                   labelStyle: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.grey
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color:Colors.black)
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
                         borderSide: BorderSide(color:Colors.black)
                     )
                 ),
                 obscureText: false,
               ),
               SizedBox(height: 5.0),
               Container(
                 alignment: Alignment(1.0,0.0),

                 padding: EdgeInsets.only(top: 15.0,left: 20.0),
                 child: InkWell(
                   child:Text('Forget Password',
                     style: TextStyle(
                       color: Colors.black54,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline
                     ),
                   )
                 ),
               ),

             RaisedButton(child: Text("SignIn"),
             onPressed: (){},
             color: Colors.black,
             textColor: Colors.white,
             padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
             splashColor: Colors.grey,
             )
    ],
           ),
         ),
         SizedBox(height:15.0),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'New to this?',

             ),
             SizedBox(width: 5.0),
             InkWell(
               onTap: (){
               Navigator.of(context).pushNamed('/SignUp');
               },
               child: Text('Register',
               style: TextStyle(
                 color: Colors.red,
                 fontWeight: FontWeight.bold,
                 decoration: TextDecoration.underline
               ),),
             )
           ],

         )
    ]
     )
    );
  }


}
