import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgrounIcondColor;

  final TextStyle? textStyle;
  final Function() onTap;

  const CustomBottom({
    super.key,
    required this.title,
    required this.icon,
    required this.backgrounIcondColor,
    this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: backgrounIcondColor),
                child: Icon(
                  icon,
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
