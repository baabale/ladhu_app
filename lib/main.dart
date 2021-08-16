import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dicePlayerOne = 1;
  int dicePlayerTwo = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ladhu App'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Image.asset('assets/images/dice$dicePlayerOne.png'),
                    onTap: () {
                      setState(() {
                        dicePlayerOne = Random().nextInt(6) + 1;
                      });
                      // print(
                      //     'Dice One tapped. $diceNumber'); // String interpolation
                    },
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: InkWell(
                    child: Image.asset('assets/images/dice2.png'),
                    onTap: () {
                      print('Dice Two tapped.');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
