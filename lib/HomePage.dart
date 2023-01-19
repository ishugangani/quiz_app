import 'package:flutter/material.dart';
import 'package:quiz_app/Lose.dart';
import 'package:quiz_app/Que1.dart';
import 'package:quiz_app/Win.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF753422),
          leading: Icon(Icons.menu),
          title: Text("KBC Quiz"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.refresh),
            ),
          ],
          elevation: 0,
        ),
        backgroundColor: Color(0xFFFFEBC9),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                    color: Color(0xff753422),
                    fontSize: 45,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "KBC",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Color(0xFFD79771),
                          offset: Offset(5, 5),
                          blurRadius: 5),
                    ]),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "que",);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF753422),
                ),
                child: Text(
                  " Let's get started ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
