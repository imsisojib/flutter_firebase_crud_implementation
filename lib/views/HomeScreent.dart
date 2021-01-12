import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';

import '../sampleview/SampleViewItem.dart';
import '../sampleview/SampleViewItem.dart';
import '../sampleview/SampleViewItem.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> widgets = [
    SampleView.getSampleItemView(),
    SampleView.getSampleItemView()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SafeArea(
        child: Scaffold(
          body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    title: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Official',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontFamily: 'Pacifico'),
                          ),
                          Text(
                            'Callbook',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontFamily: 'Pacifico'),
                          ),
                        ],
                      ),
                    ),
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          text: "Contacts",
                          icon: Icon(
                            Icons.contact_phone_rounded,
                          ),
                        ),
                        Tab(
                          text: "Call",
                          icon: Icon(
                            Icons.call,
                          ),
                        ),
                        Tab(
                          text: "Message",
                          icon: Icon(
                            Icons.contact_phone_rounded,

                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  Container(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return SampleView.getSampleItemView();
                          })),
                  Container(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return SampleView.getSampleCallItemView();
                          })),
                  Container(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return SampleView.getSampleMessageItemView();
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**Normal AppBar*/
/*
appBar: AppBar(
            title: Text(
              "Official Contacts",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 6.0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widgets
            ),
          ),
 */

class HomeScreenWidget extends StatefulWidget {
  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(),
    );
  }
}
