import 'package:flutter/material.dart';
import 'package:tugas1/card.dart';

class Pages1 extends StatelessWidget {
  const Pages1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 2, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 2, 136),
        title: const Text('statelesW'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Cards item = CardsList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 25),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                          'assets/img/istockphoto-1127535751-170667a.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Gilang Hadi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Color.fromARGB(255, 165, 165, 165),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
              const Divider(
                height: 20,
                thickness: 1.7,
                indent: 50,
                endIndent: 50,
                color: Colors.white,
              ),
              Card(
                margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            flex: 1,
                            child: Icon(Icons.people),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Text(
                                item.Kontak,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            flex: 1,
                            child: Icon(Icons.message),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Text(
                                item.Email,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        itemCount: CardsList.length,
      ),
    );
  }
}
