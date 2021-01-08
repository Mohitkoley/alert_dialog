import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {

  Future _ShowAlert (BuildContext context , String Message) async{
    return showDialog(context: context,barrierDismissible: true,builder:(context) => AlertDialog(
      title: Text(Message,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      actions: [
        FlatButton(onPressed: ()=> Navigator.of(context).pop(), child: Text("YES"))
      ],
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam 14'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Center(child: RaisedButton(onPressed: ()=> _ShowAlert(context, "Abhisek is mitha",),child: Text("Click me",style: TextStyle(color: Colors.black54,fontSize: 30),),))
          ],
        ),
      ),
    );
  }
}