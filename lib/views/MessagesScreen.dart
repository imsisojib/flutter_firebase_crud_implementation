import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';

class MessagesScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MessageScreenState();
  }

}

class _MessageScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return SampleView.getSampleMessageItemView();
          }),
    );
  }
}