import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

  static Icon getCallReceivedIcon() {
    return Icon(
      Icons.call,
      color: Colors.green[300],
    );
  }

  static Icon getCallMissedIcon() {
    return Icon(
      Icons.call,
      color: Colors.pink[300],
    );
  }

  static Icon getMessageReceivedIcon() {
    return Icon(
      Icons.message,
      color: Colors.green[300],
    );
  }

  static Icon getMessageReadIcon() {
    return Icon(
      Icons.message,
      color: Colors.white70,
    );
  }

  static Widget getSampleItemView(
      String userName, String userDept, String userMobile, String userAddress) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.people,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "User Name",
                                  ),
                                ],
                              ),
                              Text(userName,
                                style: SampleView.getBoldAndFontSize18Text(),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "Department",
                                  ),
                                ],
                              ),
                              Text(userDept,
                                  style: SampleView.getBoldAndFontSize18Text()),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Icon(
                                    Icons.mobile_friendly,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "Mobile No",
                                  ),
                                ],
                              ),
                              Text(
                                userMobile,
                                style: SampleView.getBoldAndFontSize18Text(),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Icon(
                                    Icons.account_box,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "Position",
                                  ),
                                ],
                              ),
                              Text(
                                userDept,
                                style: SampleView.getBoldAndFontSize18Text(),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Colors.pink,
                      ),
                      Text(userAddress,
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 12.0,
                          ))
                    ],
                  ),
                )
              ],
            )),
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
