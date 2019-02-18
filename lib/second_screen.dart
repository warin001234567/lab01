import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),// Appbar
      body: Center(
        child: FlatButton(
          child: Text("back to first screen"),
          onPressed: (){
            Navigator.pop(context);
          },
        ), //Text("First Screen"),
      ),// center
    );//scafford
  }
}