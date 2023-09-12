import 'package:flutter/material.dart';
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
              border: Border.all(
                color: Pallete.borderColor,
                width: 2,
              ),
            ),
            child: const Text("Good Morning, What can I do for you today?"),
          ),
        ],
      ),
    );
  }
}
