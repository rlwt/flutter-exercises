import 'package:flutter/material.dart';
import 'package:flutter_exercises/utils/text_style_utils.dart';

class Practice1 extends StatelessWidget {
  static const String routeName = "/practice-1";
  List<int> dummies = [1, 2, 3, 4, 5];

  Practice1({super.key});
  Widget buildSection1() {
    return Flexible(
      child: Container(
        color: Colors.red,
        child: Row(
          children: [
            ...List.generate(5, (index) {
              return Expanded(
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                      ),
                      Text(
                        "Flutter",
                        style: TextStyleUtils.title,
                      )
                    ],
                  ),
                )),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget buildSection2() {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("This Section"),
                  Spacer(),
                  Text("See More >>"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ...List.generate(3, (index) {
                    return Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: TextStyleUtils.title,
                          ),
                          Text("Description"),
                        ],
                      ),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSection3() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.green,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title"),
                const Text("Description"),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FilledButton(
                      onPressed: () {}, child: const Text("Buy Now")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 1 Screen"),
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
