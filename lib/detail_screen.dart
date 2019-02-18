import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  final String title;
  
  DetailScreen({this.title}); // constructor
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("$title Screen"),
      ),// Appbar
      body: Center(
        child: FlatButton(child:Text("go to second"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
        ) //Text("First Screen"),
      )// center
    );//scafford
  }
}