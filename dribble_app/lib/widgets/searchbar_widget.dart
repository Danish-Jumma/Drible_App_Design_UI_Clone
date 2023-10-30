import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 46, 143, 221)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: mq.height * .003, horizontal: 20),
        //  EdgeInsets.only(left: 10, top: 3, bottom: 3),
        child: const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 37,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
      ),
    );
  }
}
