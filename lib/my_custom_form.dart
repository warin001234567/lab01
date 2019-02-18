import 'package:flutter/material.dart';

class MycustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MycustomForm> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("custom form"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: <Widget>[
            Image.asset("resource/pom.jpg", height: 100, width: 100),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "please input your password",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return "please input value";
                }
              },
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                _formkey.currentState.validate();
              },
            )
          ],
        ),
      ),
    );
  }
}