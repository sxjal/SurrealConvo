import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:surrealconvo/home.dart';
import 'package:surrealconvo/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final speechtotext = SpeechToText();
  @override
  void initState() {
    super.initState();
    initspeechtotext();
  }

  Future<void> initspeechtotext() async {
    speechtotext.initialize();
    setState(() {});
  }

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
      body: Stack(
        children: [
          const HomePageLayer(),
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: Pallete.firstSuggestionBoxColor,
              onPressed: () {},
              child: const Icon(Icons.mic),
            ),
          ),
        ],
      ),
    );
  }
}
