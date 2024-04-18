import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundIcondColor;
  final Color backgroundBottomColor;

  final TextStyle? textStyle;
  final Function() onTap;

  const CustomBottom({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundIcondColor,
    required this.backgroundBottomColor,
    this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundBottomColor),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: backgroundIcondColor),
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
            Text(
              title,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
