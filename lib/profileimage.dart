import 'package:flutter/material.dart';
import 'package:surrealconvo/pallete.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.only(top: 4),
            decoration: const BoxDecoration(
              color: Pallete.assistantCircleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Center(
          child: Container(
            height: 123,
            width: 120,
            margin: const EdgeInsets.only(top: 4),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/virtualAssistant.png")),
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
