import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/database/ContactDatabase.dart';
import 'package:flutter_firebase_crud_imp/database/FirebaseDatabase.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';
import 'package:flutter_firebase_crud_imp/utils/CustomColors.dart';
import 'package:flutter_firebase_crud_imp/views/CallsScreen.dart';
import 'package:flutter_firebase_crud_imp/views/ContactsScreen.dart';
import 'package:flutter_firebase_crud_imp/views/MessagesScreen.dart';

import '../sampleview/SampleViewItem.dart';
import '../sampleview/SampleViewItem.dart';
import '../sampleview/SampleViewItem.dart';

class HomeScreen extends StatelessWidget {

  /*List<Widget> widgets = [
    SampleView.getSampleItemView(),
    SampleView.getSampleItemView()
  ];*/


  @override
  Widget build(BuildContext context) {

    /*Contact contact = Contact(FirebaseDatabase.getDocumentIdByChildReference(FirebaseDatabase.DB_CONTACTS),"Md Sirajul Islam Sojib", "Banking Solution", "Pilkhana, Jigatola, Dhaka", "01521315259");
    FirebaseDatabase.createOrUpdateContact(contact.toMap());*/


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
                            'Contacts',
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
                      child: ContactsScreen(),
                  ),
                  Container(
                      child: CallsScreen()
                  ),
                  Container(
                      child: MessagesScreen(),
                  ),
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
