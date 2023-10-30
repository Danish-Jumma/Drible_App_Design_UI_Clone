import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  var emogi;
  EmojiWidget({super.key, this.emogi});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: mq.width * .04, vertical: mq.height * .02),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 46, 143, 221),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        "$emogi",
        style: const TextStyle(fontSize: 33),
      ),
    );
  }
}
