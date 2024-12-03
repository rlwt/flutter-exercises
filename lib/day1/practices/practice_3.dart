import 'package:flutter/material.dart';
import 'package:flutter_exercises/utils/text_style_utils.dart';

class Practice3 extends StatelessWidget {
  static const String routeName = "/practice-3";
  List<({String title, String count})> records = [
    (title: "Followers", count: "1200"),
    (title: "Followers", count: "600"),
    (title: "Likes", count: "347"),
  ];

  Practice3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 3 Screen"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.red,
            child: Column(
              children: [
                const CircleAvatar(
                  minRadius: 100,
                  backgroundImage: NetworkImage(
                      "https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png"),
                ),
                const SizedBox(height: 12),
                Text("Your Name", style: TextStyleUtils.title),
                const SizedBox(height: 12),
                Text("Your Role", style: TextStyleUtils.title),
                const SizedBox(height: 12),
                Text("Your Location", style: TextStyleUtils.title),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(4, (index) {
                      return const Icon(Icons.abc);
                    })
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...records.map(
                  (e) {
                    return Demo3Tile(title: e.title, count: e.count);
                  },
                )
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Bio:"),
                Text(
                  "Description",
                  style: TextStyleUtils.title,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: const Text("Follow"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  label: const Text("Messgae"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Demo3Tile extends StatelessWidget {
  final String title;
  final String count;
  const Demo3Tile({super.key, required this.title, required this.count});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(
          count,
          style: TextStyleUtils.title,
        ),
      ],
    );
  }
}
