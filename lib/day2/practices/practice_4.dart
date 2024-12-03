import 'package:flutter/material.dart';

class Practice4 extends StatelessWidget {
  static const String routeName = "/practice-4";
  List<String> languages = [
    "Dart",
    "Swift",
    "Objective C",
    "Java Kotlin",
    "Go lang",
    "Javascript",
    "Dart",
    "Dart",
    "Dart",
    "Dart",
  ];

  Practice4({super.key});

  Widget buildSection1() {
    return ListView.builder(
      itemBuilder: (context, index) {
        final language = languages[index];
        return ListTile(
          title: Text(language),
        );
      },
      itemCount: languages.length,
    );
  }

  Widget buildSection2() {
    return Container(
      color: Colors.green,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 50,
            height: 50,
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              color: Colors.orange,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection3() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final language = languages[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(child: Text(language)),
          ),
        );
      },
      itemCount: languages.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 4 Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: buildSection1(),
          ),
          Expanded(
            flex: 2,
            child: buildSection2(),
          ),
          Expanded(
            child: buildSection3(),
          ),
        ],
      ),
    );
  }
}
