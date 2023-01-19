import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:quiz_app/Lose.dart';
import 'package:quiz_app/Que1.dart';
import 'package:quiz_app/Win.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> HomePage(),
        'que':(context)=> Ques1(),
        'lose':(context)=> Lose(),
        'win':(context)=> Win(),
      },
    ),
  );
}