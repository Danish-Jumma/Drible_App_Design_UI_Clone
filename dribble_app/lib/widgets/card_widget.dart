// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  var leadingIcon;
  var titleText;
  var subtitleText;
  var bgavatarColor;
  CardWidget(
      {super.key,
      this.leadingIcon,
      this.subtitleText,
      this.titleText,
      this.bgavatarColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 131, 194, 245)),
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        // Leading
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgavatarColor,
          ),
          padding: const EdgeInsets.all(15),
          child: Icon(
            leadingIcon,
            color: Colors.white,
            size: 32,
          ),
        ),
        // Title
        title: Text(
          "$titleText",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        // Subtitle
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text("$subtitleText"),
        ),
        subtitleTextStyle: const TextStyle(fontSize: 15),
        trailing: const Icon(
          Icons.more_horiz_outlined,
          size: 32,
        ),
      ),
    );
  }
}
