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
  var ran1 = ["blank","bongkong","kdam","kla","klok","morn","trey"];
  var ran2 = ["blank","bongkong","kdam","kla","klok","morn","trey"];
  var ran3 = ["blank","bongkong","kdam","kla","klok","morn","trey"];

  int ran1Index = 2;
  int ran2Index = 2;
  int ran3Index = 2;

  void RandomNumber() {
    setState(() {
      ran1Index = rng.nextInt(6) + 1;
      ran2Index = rng.nextInt(6) + 1;
      ran3Index = rng.nextInt(6) + 1;


      // ran1 = rng.nextInt(6);
      // ran2 = rng.nextInt(6);
      // ran3 = rng.nextInt(6);
    });
  }

  void restart() {
    setState(() {
      ran1Index = 0;
      ran2Index = 0;
      ran3Index = 0;  
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
                const SizedBox(height: 150),
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
                const SizedBox(height: 150),
                ElevatedButton(
                  onPressed: () {
                    RandomNumber();
                  },
                  child: const Text('ក្រឡុក'),
                ),         
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    restart();
                  },
                  child: const Text('បិទចាន'),
                ),         
              ],
            )
          )
        ),
      )
    );
  }
}