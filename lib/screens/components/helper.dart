import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_bottom.dart';

void showSnakBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

void showMyDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(title: Text(title), content: Text(content));
    },
  );
}
