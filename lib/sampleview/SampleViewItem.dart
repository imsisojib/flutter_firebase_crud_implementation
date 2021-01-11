import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';

class SampleView {

  static TextStyle getBoldAndFontSize18Text(){
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.pink,
    );
  }

  static Widget getSampleItemView(){
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
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
                    "User Name"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Mobile No"
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.people
                      ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                    "Md Sirajul Islam",
                      style: SampleView.getBoldAndFontSize18Text(),
                    ),
                    ],
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "+8801521315259",
                    style: SampleView.getBoldAndFontSize18Text(),
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                      "Position"
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Department"
                  ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(child: Text(
                      "Intern",
                    style: SampleView.getBoldAndFontSize18Text(),
                  ),
                    flex: 1,
                  ),
                  Expanded(child: Text(
                      "Banking Solution",
                    style: SampleView.getBoldAndFontSize18Text(),
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