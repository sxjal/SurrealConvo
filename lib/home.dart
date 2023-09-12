import 'package:flutter/material.dart';
import 'package:surrealconvo/feature_box.dart';
import 'package:surrealconvo/pallete.dart';
import 'package:surrealconvo/profileimage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Pallete.whiteColor,
        foregroundColor: Pallete.blackColor,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        title: const Text("Surreal Convo"),
        leading: const Icon(Icons.menu),
      ),
      body: Column(
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
                color: Colors.black,
                title: "Chat GPt",
                subtitle: "Chat GPT",
              ),
              FeatureBox(
                color: Colors.black,
                title: "Chat GPt",
                subtitle: "Chat GPT",
              ),
              FeatureBox(
                color: Colors.black,
                title: "Chat GPt",
                subtitle: "Chat GPT",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
