import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  var headingText;

  HeadingWidget({super.key, this.headingText});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$headingText",
      style: const TextStyle(
          fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
