import 'dart:math';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Mayor Project1',
          ),
        ),
        backgroundColor: Colors.amber[700],
      ),
      body: Center(
        child: Tugas1(),
      ),
    ));
  }
}

class Tugas1 extends StatefulWidget {
  const Tugas1({Key? key}) : super(key: key);
  @override
  _Tugas1State createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int frameLeft = 1;
  int frameRight = 2;

  void acakGambar() {
    setState(() {
      frameLeft = Random().nextInt(6) + 1;
      frameRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Image.asset(
              'images/image$frameLeft.jpg',
            ),
            onTap: () {
              acakGambar();
            },
          ),
        ),
      ),
      Expanded(
          child: GestureDetector(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('click'),
        ),
        onTap: () {
          acakGambar();
        },
      ))
    ]));
  }
}
