import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/database/FirebaseDatabase.dart';
import 'package:flutter_firebase_crud_imp/listeners/OnDataDownloadListener.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';
import 'package:flutter_firebase_crud_imp/utils/DialogBox.dart';

class ContactsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContactScreenState();
  }
}

class _ContactScreenState extends State<ContactsScreen> implements OnDataDownloadListener<Contact>{

  List<Widget> contactItems = [];
  List<Contact> contacts = [];

  @override
  void initState() {
    /** Retrieve Data From Server*/
    super.initState();

    FirebaseDatabase.getAllContacts(this);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: contactItems,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: (){
            //show dialog form
            DialogBox.showContactDialogForm(context);
          },
        ),
      ),
    );
  }

  @override
  void dispose() {

  }

  @override
  void onDownloadFinished() {
    contactItems.clear();
    contacts.forEach((element) {
      setState(() {
        contactItems.add(SampleView.getSampleItemView(element.userName,element.userDept,element.userMobile,element.userAddress));
      });
    });


  }

  @override
  void onDownloadStarted() {
    contacts.clear();
  }

  @override
  void onDownloadedData(Contact t) {
    contacts.add(t);
  }

  @override
  void onDownloadedDataList(List<Contact> lists) {
    // TODO: implement onDownloadedDataList
  }

}
