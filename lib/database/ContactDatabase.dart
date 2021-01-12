
import 'package:floor/floor.dart';
import 'package:flutter_firebase_crud_imp/daos/ContactDao.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';



@Database(version: 1, entities: [Contact])
abstract class ContactDatabase extends FloorDatabase{

  ContactDao get contactDao;


}