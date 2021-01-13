
import 'dart:collection';

import 'package:floor/floor.dart';

@entity
class Contact{
  //key names
  static const String USER_ID = "userId";
  static const String USER_NAME = "userName";
  static const String USER_DEPT = "userDept";
  static const String USER_ADDRESS = "userAddress";
  static const String USER_MOBILE = "userMobile";

  @primaryKey
  String userId;
  String userName,userDept,userAddress,userMobile;


  Contact(this.userId, this.userName, this.userDept, this.userAddress,
      this.userMobile);

  Map<String, dynamic> toMap(){
    Map<String,dynamic> hashedMap = HashMap();
    hashedMap[USER_ID] = this.userId;
    hashedMap[USER_NAME] = this.userName;
    hashedMap[USER_DEPT] = this.userDept;
    hashedMap[USER_ADDRESS] = this.userAddress;
    hashedMap[USER_MOBILE] = this.userMobile;

    return hashedMap;
  }

}