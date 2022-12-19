import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProvideState extends ChangeNotifier {

  /// List for Bottom Navigation Bar
  final List<Widget> pages = const [
    // MainHomeScreen() ,
    // MainFriendsScreen() ,
  ];

  /// Strings
  final RestorableString string = RestorableString("");

  String equalValueString(String v){
    notifyListeners() ;
    return string.value = v;
  }

  void equalStringNull(){
    string.value = '';
    notifyListeners();
  }

  /// Boolean
  final RestorableBool boolean = RestorableBool(true);

  bool switchBoolean(){
    notifyListeners();
    return boolean.value = !boolean.value;
  }

  bool trueBoolean(){
    notifyListeners();
    return boolean.value = true;
  }

  bool falseBoolean(){
    notifyListeners();
    return boolean.value = false;
  }

  /// Integer
  final RestorableInt integer = RestorableInt(0);
  int equalValueInteger(int v) {
    notifyListeners();
    return integer.value = v;
  }


  /// File for ImagePicker

  File? fileImage;
  //RestorableValue<File>? test;
  Future<void> getImagePicker({required BuildContext context,required ImageSource imageSource}) async {
    try {
      final XFile? image = await ImagePicker().pickImage(source: imageSource);

      if (image != null) {
        fileImage = File(image.path);
      }
      else {
        print("ImagePicker for Else");
        //customSnackBar(text: 'your arn\'t selected Image', context: context);
      }
      notifyListeners();
    }on PlatformException catch(_) {
      print("ImagePicker for PlatFormException");
      //customSnackBar(text: 'your arn\'t selected Image', context: context);
    }
  }

  void deleteImagePicker(){
    fileImage = null;
    notifyListeners();
  }

  /// Testing

}