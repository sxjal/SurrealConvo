import 'package:flutter/material.dart';
import 'package:surrealconvo/feature_box.dart';
import 'package:surrealconvo/pallete.dart';
import 'package:surrealconvo/profileimage.dart';

class HomePageLayer extends StatefulWidget {
  const HomePageLayer({super.key});

  @override
  State<HomePageLayer> createState() => _HomePageLayerState();
}

class _HomePageLayerState extends State<HomePageLayer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const ProfileImage(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
              border: Border.all(
                color: Pallete.borderColor,
                width: 2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Good Morning, What can I do for you today?",
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontFamily: 'Cera Pro',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(
              top: 10,
              left: 22,
            ),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Here are a few features",
              style: TextStyle(
                color: Pallete.mainFontColor,
                fontFamily: 'Cera Pro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                title: "Chat GPT",
                subtitle:
                    "A smarter to stay organized and informed with ChatGPT",
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                title: "DALL-E",
                subtitle:
                    "Get inspired and stay creative with your personal assistant powered by DALL-E",
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                title: "Smart Voice Assistant",
                subtitle:
                    "Get the best of both worlds with a voice assistant powered by DALL-E and CHAT GPT",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
