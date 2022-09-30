import 'package:flutter/material.dart';
import 'package:tugas1/pages/page1.dart';
import 'package:tugas1/pages/page2.dart';
import 'package:tugas1/pages/page3.dart';

// ignore: camel_case_types
class navBottom extends StatefulWidget {
  const navBottom({Key? key}) : super(key: key);

  @override
  State<navBottom> createState() => _navBottomState();
}

// ignore: camel_case_types
class _navBottomState extends State<navBottom> {
  int currentIndex = 0;

  final List<Widget> body = [
    const Pages1(),
    Dadu(),
    const Pages3(),
  ];
  // body[currentIndex],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 27, 2, 136),
        onTap: ontap,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 27, 2, 136),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'home',
            activeIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'favorit',
            activeIcon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 252, 252, 252),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_on_outlined,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'profil',
            activeIcon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
