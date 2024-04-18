import 'package:flutter/material.dart';

void showMyUploadDialog(BuildContext context, {required Widget action}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white70,
      shadowColor: Colors.transparent,
      actions: [action],
    ),
  );
}
