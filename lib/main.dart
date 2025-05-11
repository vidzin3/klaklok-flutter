import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyAppContribute(),
    );
  }
  
}

class MyAppContribute extends StatefulWidget {
  const MyAppContribute({super.key});

  @override
  State<MyAppContribute> createState() => MyAppBody();
}

class MyAppBody extends State<MyAppContribute>{

  var rng = new Random();
  var init = 0;
  var ran1 = ["blank","bongkong","kdam","trey","kla","klok","morn"];
  var ran2 = ["blank","bongkong","kdam","trey","kla","klok","morn"];
  var ran3 = ["blank","bongkong","kdam","trey","kla","klok","morn"];
  var layout_game = ["bongkong","kdam","trey","kla","klok","morn"];

  int ran1Index = 2;
  int ran2Index = 2;
  int ran3Index = 2;

  int altRan1Index = 2;
  int altRan2Index = 2;
  int altRan3Index = 2;

  void closeDist() {
    setState(() {
      ran1Index = 0;
      ran2Index = 0;
      ran3Index = 0;   
    });
  }

  void RandomNumber() async {
    final iterations = 8;

    for (int i = 0; i < iterations; i++) {
      int delay = 1 + i * (50+50);
      await Future.delayed(Duration(milliseconds:delay));
      setState(() {
        ran1Index = rng.nextInt(6) + 1;
        ran2Index = rng.nextInt(6) + 1;
        ran3Index = rng.nextInt(6) + 1;
      });
    }

    closeDist();

    altRan1Index = rng.nextInt(6) + 1;
    altRan2Index = rng.nextInt(6) + 1;
    altRan3Index = rng.nextInt(6) + 1;
  }

  void openDist() {
    setState(() {
      ran1Index = altRan1Index;
      ran2Index = altRan2Index;
      ran3Index = altRan3Index;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ល្បែងខ្លាឃ្លោក',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30,top: 0,bottom: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.purple
                  ),
                  child: const Text(
                    'ខ្លាឃ្លោក',
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[3]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[4]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[5]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[0]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[1]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${layout_game[2]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),

                // divider
                Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  width: 550,
                  height: 2,
                  color: Color.fromARGB(255, 179, 176, 176),
                ),
                // random image
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${ran1[ran1Index]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${ran2[ran2Index]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset(
                          '../assets/images/${ran3[ran3Index]}.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    RandomNumber();
                  },
                  child: const Text('ក្រឡុក'),
                ),         
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    openDist();
                  },
                  child: const Text('បើកចាន'),
                ),         
              ],
            )
          )
        ),
      )
    );
  }
}