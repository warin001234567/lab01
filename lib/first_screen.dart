import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstScreenState();
  }

}

class FirstScreenState extends State{
  List<String> _passsengers = <String>["", "1", "2", "3", "4", "5"];
  String _passenger = '2';
  File _image;

  Future getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image =image;
    });
  }

 @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: (){
          getImage();
        },
      ),
      appBar: AppBar(
        title: Text("Frist Screen"),
      ),
      body: Form(
        child: ListView(
children: <Widget>[
          InputDecorator(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "Passenger"
            ),
            isEmpty: _passenger == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _passenger,
                onChanged: (value){
                  setState(() {
                    _passenger =value;
                  });
                },
                items: _passsengers.map((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                    
                  );
                },
                ).toList(),
              ),
            ),
          ),
          DateTimePickerFormField(
            inputType: InputType.date,
            format: DateFormat("yyyy-mm--dd"),
            decoration: InputDecoration(labelText: "Datetime")
          )
        ],
        ),
        
      ),
    );
  }
}