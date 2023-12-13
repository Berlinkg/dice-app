import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int On = 1;
int Sol = 6;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Center(child: Text("tapshyrma")),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                      onTap: () {
                        setState(() {});
                        On = Random().nextInt(6) + 1;
                      },
                      child: Image.asset("assets/images/dice$On.png")),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                      onTap: () {
                        setState(() {});
                        Sol = Random().nextInt(6) + 1;
                      },
                      child: Image.asset("assets/images/dice$Sol.png")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
