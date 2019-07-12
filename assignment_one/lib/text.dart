import 'package:flutter/material.dart';

class BelowAppBarText extends StatelessWidget {
  final String shownText;

  BelowAppBarText(this.shownText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        shownText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
