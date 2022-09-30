import 'dart:math';

import 'package:flutter/material.dart';

class Dadu extends StatefulWidget {
  @override
  State<Dadu> createState() => _DaduState();
}

class _DaduState extends State<Dadu> {
  List<String> dadu = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png',
  ];

  String dadu1 = 'dice6.png';
  String dadu2 = 'dice6.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 2, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 2, 136),
        title: const Text('statelesF'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      this.dadu1 = dadu[Random().nextInt(6)];
                    });
                  },
                  child: Image.asset(
                    'assets/img/' + dadu1,
                    width: 120.0,
                    height: 120.0,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 17, 2, 43),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      this.dadu2 = dadu[Random().nextInt(6)];
                    });
                  },
                  child: Image.asset(
                    'assets/img/' + dadu2,
                    width: 120.0,
                    height: 120.0,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 17, 2, 43),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
          ],
        ),
      ),
    );
  }
}
