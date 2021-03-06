import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/database/FirebaseDatabase.dart';
import 'package:flutter_firebase_crud_imp/listeners/OnDataDownloadListener.dart';
import 'package:flutter_firebase_crud_imp/listeners/OnUploadListener.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';
import 'package:flutter_firebase_crud_imp/utils/DialogBox.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContactsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContactScreenState();
  }
}

class _ContactScreenState extends State<ContactsScreen> implements OnDataDownloadListener<Contact>,OnUploadListener{

  List<Widget> contactItems = [];
  List<Contact> contacts = [];

  Widget _updateListView(){
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context,index){
        Contact contact = contacts[index];
        if(contact == null) return Container();
        return GestureDetector(
            child: SampleView.getSampleItemView(contact.userName, contact.userDept, contact.userMobile, contact.userAddress),
          onTap: () => {
              _showUpdateDialog(index),
            print("Position: $index"),
          },
        );
      },
    );
  }

  void _showUpdateDialog(int index){
    DialogBox.showContactUpdateDialogForm(context, this, contacts[index]);
  }

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
        body: _updateListView(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: (){
            //show dialog form
            DialogBox.showContactDialogForm(context,this);
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onDownloadFinished() {
    contactItems.clear();
    contacts.forEach((element) {
      setState(() {
        _updateListView();
      });
    });

    //Navigator.pop(context);
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

  @override
  void onFailedToUpload() {
    Navigator.pop(context);
    Fluttertoast.showToast(
        msg: "Failed!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  void onUploaded() {
    // TODO: implement onUploaded
    Navigator.pop(context);
    Fluttertoast.showToast(
        msg: "Successful.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }

}
