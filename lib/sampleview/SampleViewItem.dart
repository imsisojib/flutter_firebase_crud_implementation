import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';

import '../utils/CustomColors.dart';

class SampleView {
  //textStyles
  static TextStyle getBoldAndFontSize18Text() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    );
  }

  static Icon getCallReceivedIcon(){
    return Icon(
      Icons.call,
      color: Colors.green[300],
    );
  }

  static Icon getCallMissedIcon(){
    return Icon(
      Icons.call,
      color: Colors.pink[300],
    );
  }

  static Icon getMessageReceivedIcon(){
    return Icon(
      Icons.message,
      color: Colors.green[300],
    );
  }

  static Icon getMessageReadIcon(){
    return Icon(
      Icons.message,
      color: Colors.white70,
    );
  }

  static Widget getSampleItemView(String userName, String userDept, String userMobile, String userAddress) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  Expanded(
                    child: Text("User Name"),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text("Mobile No"),
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
                        Icon(Icons.people,color: Colors.pink,),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          userName,
                          style: SampleView.getBoldAndFontSize18Text(),

                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.mobile_friendly,color: Colors.pink,),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          userMobile,
                          style: SampleView.getBoldAndFontSize18Text(),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Position"),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text("Department"),
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
                        Icon(Icons.border_style,color: Colors.pink,),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          userDept,
                          style: SampleView.getBoldAndFontSize18Text(),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.comment_bank_rounded,color: Colors.pink,),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          userDept,
                          style: SampleView.getBoldAndFontSize18Text(),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.pin_drop,
                    color: Colors.pink,
                  ),
                  Expanded(
                    child: Text(
                    userAddress,
                  ),
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget getSampleCallItemView() {

    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  Expanded(
                    child: Text(
                        "Sirajul Islam Sojib",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Text(
                        "10-01-2021 10:30 am",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  getCallMissedIcon(),
                  Expanded(
                    child: Text(
                      "You have missed a call.",
                    ),
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget getSampleMessageItemView() {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  Expanded(
                    child: Text(
                      "Sirajul Islam Sojib",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Text(
                      "10-01-2021 10:30 am",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  getMessageReceivedIcon(),
                  Expanded(
                    child: Text(
                      "You have received a new message.",
                    ),
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
