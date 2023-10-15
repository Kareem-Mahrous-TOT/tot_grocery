import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> showToast(
    {required String message,}) async {
  await Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: Colors.red,
    textColor: const Color.fromARGB(255, 31, 71, 164),
    fontSize: 16.0,
  );
}

