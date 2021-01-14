import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_imp/database/FirebaseDatabase.dart';
import 'package:flutter_firebase_crud_imp/listeners/OnUploadListener.dart';
import 'package:flutter_firebase_crud_imp/models/Contact.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogBox {

  static void showContactDialogForm(BuildContext context,OnUploadListener listener) {

    String name,mobile,dept,address;
    FocusNode nameFocusNode = FocusNode();
    FocusNode mobileFocusNode = FocusNode();
    FocusNode deptFocusNode = FocusNode();
    FocusNode addressFocusNode = FocusNode();
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool nameValidate = true, mobileValidate = true, deptValidate = true, addressValidate = true;

    void keyBoardFocus(BuildContext context, FocusNode currentNode, FocusNode nextNode){
      currentNode.unfocus();
      FocusScope.of(context).requestFocus(nextNode);
    }

    showDialog(
      context: context,
      useSafeArea: true,
      child: AlertDialog(
        scrollable: true,
        title: Text("Contact Info"),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, nameFocusNode, mobileFocusNode);
                  },
                  focusNode: nameFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      nameValidate = false;
                      return'*Can nott be empty.';
                    } else nameValidate = true;
                  },

                  onChanged: (value) => {
                    name = value
                  },
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    //icon: Icon(Icons.account_box),
                    prefix: Icon(Icons.account_box),
                  ),
                ),
                TextFormField(
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, mobileFocusNode, deptFocusNode);
                  },
                  focusNode: mobileFocusNode,
                    validator: (String value){
                      if(value.isEmpty){
                        mobileValidate = false;
                        return'*Can nott be empty.';
                      } else mobileValidate = true;
                    },
                  onChanged: (value) => {
                    mobile = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Mobile No',
                    icon: Icon(Icons.mobile_friendly),
                  ),
                ),
                TextFormField(
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, deptFocusNode, addressFocusNode);
                  },
                  focusNode: deptFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      deptValidate = false;
                      return'*Can nott be empty.';
                    } else deptValidate= true;
                  },
                  onChanged: (value) => {
                    dept = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Department',
                    icon: Icon(Icons.local_fire_department),
                  ),
                ),
                TextFormField(
                  onFieldSubmitted: (term){

                  },
                  focusNode: addressFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      addressValidate = false;
                      return'*Can nott be empty.';
                    } else addressValidate = true;
                  },
                  onChanged: (value) => {
                    address = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Address',
                    icon: Icon(Icons.pin_drop),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          MaterialButton(
            color: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
              child: Text("Save"),
              onPressed: () {
                // your code
                if (nameValidate && mobileValidate && deptValidate && addressValidate){
                  //upload to database
                  Contact contact = Contact(FirebaseDatabase.getDocumentIdByChildReference(FirebaseDatabase.DB_CONTACTS), name, dept, address, mobile);
                  FirebaseDatabase.createOrUpdateContact(contact.toMap(),listener);
                  Navigator.pop(context);
                  DialogBox.showLoadingDialogBox(context, "Saving Contact");


                }else {
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                      msg: "Invalid Information!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }



              })
        ],
      ),
    );
  }

  static void showContactUpdateDialogForm(BuildContext context,OnUploadListener listener,Contact mContact) {

    String name = mContact.userName,
        mobile = mContact.userMobile,
        dept = mContact.userDept,
        address = mContact.userAddress;

    FocusNode nameFocusNode = FocusNode();
    FocusNode mobileFocusNode = FocusNode();
    FocusNode deptFocusNode = FocusNode();
    FocusNode addressFocusNode = FocusNode();
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool nameValidate = true, mobileValidate = true, deptValidate = true, addressValidate = true;

    void keyBoardFocus(BuildContext context, FocusNode currentNode, FocusNode nextNode){
      currentNode.unfocus();
      FocusScope.of(context).requestFocus(nextNode);
    }

    showDialog(
      context: context,
      useSafeArea: true,
      child: AlertDialog(
        scrollable: true,
        title: Text("Contact Info"),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: TextEditingController(
                    text: name,
                  ),
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, nameFocusNode, mobileFocusNode);
                  },
                  focusNode: nameFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      nameValidate = false;
                      return'*Can nott be empty.';
                    } else nameValidate = true;
                  },

                  onChanged: (value) => {
                    name = value
                  },
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    //icon: Icon(Icons.account_box),
                    prefix: Icon(Icons.account_box),
                  ),
                ),
                TextFormField(
                  controller: TextEditingController(
                    text: mobile,
                  ),
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, mobileFocusNode, deptFocusNode);
                  },
                  focusNode: mobileFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      mobileValidate = false;
                      return'*Can nott be empty.';
                    } else mobileValidate = true;
                  },
                  onChanged: (value) => {
                    mobile = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Mobile No',
                    icon: Icon(Icons.mobile_friendly),
                  ),
                ),
                TextFormField(
                  controller: TextEditingController(
                    text: dept,
                  ),
                  onFieldSubmitted: (term){
                    keyBoardFocus(context, deptFocusNode, addressFocusNode);
                  },
                  focusNode: deptFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      deptValidate = false;
                      return'*Can nott be empty.';
                    } else deptValidate= true;
                  },
                  onChanged: (value) => {
                    dept = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Department',
                    icon: Icon(Icons.local_fire_department),
                  ),
                ),
                TextFormField(
                  controller: TextEditingController(
                    text: address,
                  ),
                  onFieldSubmitted: (term){

                  },
                  focusNode: addressFocusNode,
                  validator: (String value){
                    if(value.isEmpty){
                      addressValidate = false;
                      return'*Can nott be empty.';
                    } else addressValidate = true;
                  },
                  onChanged: (value) => {
                    address = value
                  },
                  decoration: InputDecoration(
                    labelText: 'Address',
                    icon: Icon(Icons.pin_drop),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          MaterialButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              child: Text("Delete"),
              onPressed: () {
                // your code
                FirebaseDatabase.deleteContact(mContact.toMap(),listener);
                Navigator.pop(context);
                DialogBox.showLoadingDialogBox(context, "Deleting");

              }),
          MaterialButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              child: Text("Update"),
              onPressed: () {
                // your code
                if (nameValidate && mobileValidate && deptValidate && addressValidate){
                  //upload to database
                  //Contact contact = Contact(FirebaseDatabase.getDocumentIdByChildReference(FirebaseDatabase.DB_CONTACTS), name, dept, address, mobile);

                  mContact.userName = name;
                  mContact.userAddress = address;
                  mContact.userDept = dept;
                  mContact.userMobile = mobile;

                  FirebaseDatabase.createOrUpdateContact(mContact.toMap(),listener);
                  Navigator.pop(context);
                  DialogBox.showLoadingDialogBox(context, "Updating Contact");


                }else {
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                      msg: "Invalid Information!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }



              })
        ],
      ),
    );
  }

  static Future<void> showLoadingDialogBox(BuildContext context,String tittleString){
    return showDialog(
        context: context,
        barrierDismissible: false,
        child: AlertDialog(
          title: Text(
              tittleString
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularProgressIndicator(
                value: 10.0,
                backgroundColor: Colors.pink,

              ),
              Text(
                  "Please wait..."
              )
            ],
          ),
        )
    );
  }

}
