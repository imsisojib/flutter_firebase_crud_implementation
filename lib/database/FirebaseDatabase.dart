import 'package:cloud_firestore/cloud_firestore.dart';

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
}
