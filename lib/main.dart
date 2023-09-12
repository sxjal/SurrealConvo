import 'package:flutter/material.dart';
import 'package:surrealconvo/pallete.dart';
import 'package:surrealconvo/stackwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Surreal Convo",
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
      ),
      home: const Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    ),
  );
}
