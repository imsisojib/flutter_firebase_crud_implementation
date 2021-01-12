import 'package:floor/floor.dart';

@entity
class Contact{
  @primaryKey
  int id;
  String name,dept,address,mobileNo;

  Contact(this.id, this.name, this.dept, this.address, this.mobileNo);
}