import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  static const String routeName = "/practice-2";
  const Practice2({super.key});

  Widget buildSection1() {
    return Flexible(
      child: Container(
        color: Colors.red,
        width: double.infinity,
        child: Card(
          child: Column(
            children: [
              const Spacer(),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(12),
                child: const Column(
                  children: [
                    Text("Title"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Description"),
                        Text("Description"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection2() {
    return Flexible(
        child: Container(
      child: Column(
        children: [
          ...List.generate(3, (index) {
            return Demo2Tile();
          })
        ],
      ),
    ));
  }

  Widget buildSection3() {
    return Flexible(
        child: Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.yellow,
          child: Column(
            children: [
              const Text("News"),
              ...List.generate(2, (index) {
                return Demo2Tile();
              })
            ],
          ),
        )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 2 Screen"),
      ),
      body: Column(
        children: [
          buildSection1(),
          buildSection2(),
          buildSection3(),
        ],
      ),
    );
  }
}

class Demo2Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.blue,
      margin: EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Text("Title"),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
