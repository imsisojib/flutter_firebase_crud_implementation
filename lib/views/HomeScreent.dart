import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';

class HomeScreen extends StatelessWidget{

  List<Widget> widgets = [SampleView.getSampleItemView(),SampleView.getSampleItemView()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Demo Project",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widgets
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenWidget extends StatefulWidget{

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
      ),
    );
  }

}
