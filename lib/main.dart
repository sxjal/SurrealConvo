import 'package:flutter/material.dart';
import 'package:surrealconvo/home.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Surreal Convo",
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    ),
  );
}
