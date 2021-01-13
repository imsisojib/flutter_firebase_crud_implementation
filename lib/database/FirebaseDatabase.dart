import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase_crud_imp/listeners/OnDataDownloadListener.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';
import 'package:flutter_firebase_crud_imp/sampleview/SampleViewItem.dart';

class FirebaseDatabase {
  static final String DB_CONTACTS = "Contacts";
  static final Firestore _db = Firestore.instance;

  static String getDocumentIdByChildReference(String childName) {
    return _db.collection(childName).document().documentID.toString();
  }

  static Future<void> createOrUpdateContact(
      Map<String, dynamic> contact) async {
    await _db
        .collection(DB_CONTACTS)
        .document(contact['document'])
        .setData(contact, merge: true)
        .whenComplete(() => {

          print("Upload Successful"),

          }
        );
  }

  static void getAllContacts(OnDataDownloadListener<Contact> listener){
      _db.collection(DB_CONTACTS).getDocuments().then((value) => {
        value.documents.forEach((element) {
          try{
            listener.onDownloadedData(Contact.fromMap(element));
          }catch(e){
            print("getAllContacts(): map to object parsing error.");
          }
        }),
        listener.onDownloadFinished()

      });
  }

  /*static Widget getTasks() {
    return StreamBuilder(
        stream: _db.collection(DB_CONTACTS)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (BuildContext context, int index) =>
                  Text(snapshot.data.documents[index]['userName']),
            );
          } else {
            return Container();
          }
        });
  }*/

}
