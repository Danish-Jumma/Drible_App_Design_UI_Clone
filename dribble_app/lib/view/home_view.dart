import 'package:dribble_app/widgets/appbar_widgets.dart';
import 'package:dribble_app/widgets/card_widget.dart';
import 'package:dribble_app/widgets/emoji_widget.dart';
import 'package:dribble_app/widgets/heading_widget.dart';
import 'package:dribble_app/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 123, 207),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // appbar
          const AppBarWidget(),
          // space
          const SizedBox(
            height: 30,
          ),
          // search
          const SearchBarWidget(),
          // Spacing
          const SizedBox(
            height: 30,
          ),
          // Heading and icon
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingWidget(
                  headingText: "How do you feel?",
                ),
                const Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // emoji and text heading section
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    EmojiWidget(
                      emogi: "😔",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Badly",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    EmojiWidget(
                      emogi: "😊",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Fine",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    EmojiWidget(
                      emogi: "😄",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Well",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    EmojiWidget(
                      emogi: "😎",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Excellent",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Container Bottom Section
          Container(
            // main Parent Container
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 1400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                // line
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 50,
                  height: 6,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 147, 201, 246),
                      borderRadius: BorderRadius.circular(15)),
                ),
                // Vertical and Horizontal sapce
                const SizedBox(
                  height: 30,
                ),
                // Exercises
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercises",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 32,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // Card section
                CardWidget(
                  leadingIcon: Icons.favorite_rounded,
                  bgavatarColor: Colors.red,
                  titleText: "Speaking skills",
                  subtitleText: "16 Exercises",
                ),
                CardWidget(
                  leadingIcon: Icons.person,
                  bgavatarColor: const Color.fromARGB(255, 28, 123, 201),
                  titleText: "Reading Speed",
                  subtitleText: "8 Exercises",
                ),
                CardWidget(
                  leadingIcon: Icons.headset_rounded,
                  bgavatarColor: Colors.pink,
                  titleText: "Listening skills",
                  subtitleText: "10 Exercises",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
