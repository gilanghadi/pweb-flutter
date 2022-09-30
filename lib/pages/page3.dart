import 'package:flutter/material.dart';

class Pages3 extends StatelessWidget {
  const Pages3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 2, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 2, 136),
        title: const Text('notification'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
