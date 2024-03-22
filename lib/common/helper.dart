import 'package:flutter/material.dart';

Text largeTextStyle(String text, double size, {Color? color}) {
  return Text(text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold));
}

Text mediumTextStyle(String text, double size, {Color? color}) {
  return Text(text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w300,
      ));
}

Text smallTextStyle(String text, double size, {Color? color}) {
  return Text(text,
      style: TextStyle(
          fontSize: size, color: color, fontWeight: FontWeight.normal));
}

void navigateTO(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
