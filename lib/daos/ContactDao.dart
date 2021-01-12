
import 'package:floor/floor.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';

@dao
abstract class ContactDao{

  @Query('SELECT * FROM Contact')
  Future<List<Contact>> getAllContacts();

  @insert
  Future<void> insertContact(Contact contact);


}