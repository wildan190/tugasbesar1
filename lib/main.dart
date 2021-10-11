import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Major Project1',
            ),
          ),
          backgroundColor: Colors.amber[700],
        ),
        body: tugasBesar1(),
      ),
    );
  }
}

class tugasBesar1 extends StatefulWidget {
  const tugasBesar1({Key? key}) : super(key: key);

  @override
  _tugasBesar1 createState() => _tugasBesar1();
}

class _tugasBesar1 extends State<tugasBesar1> {
  int frame1 = 1;

  void acakGambar() {
    setState(() {
      frame1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(55.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/image$frame1.jpg',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 150.00),
                  child: GestureDetector(
                    child: FlatButton(
                      child: Text(
                        'Click!!!',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      color: Colors.amber[700],
                      textColor: Colors.white,
                      onPressed: () {
                        acakGambar();
                      },
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
