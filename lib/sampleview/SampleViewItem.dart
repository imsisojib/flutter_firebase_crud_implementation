import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';

class SampleView {

  static Widget getSampleItemView(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      color: Colors.pinkAccent,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                    "Your Name:"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Your Name:"
                  ),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}