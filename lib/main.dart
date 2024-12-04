import 'package:flutter/material.dart';
import 'package:flutter_exercises/day1/practices/practice_1.dart';
import 'package:flutter_exercises/day1/practices/practice_2.dart';
import 'package:flutter_exercises/day1/practices/practice_3.dart';
import 'package:flutter_exercises/day2/practices/practice_4.dart';
import 'package:flutter_exercises/day2/practices/practice_5.dart';
import 'package:flutter_exercises/day2/practices/practice_6.dart';
import 'package:flutter_exercises/day2/practices/practice_7.dart';
import 'package:flutter_exercises/day2/practices/practice_8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MenuScreen.routeName,
      routes: {
        MenuScreen.routeName: (context) => const MenuScreen(),
        Practice1.routeName: (context) => Practice1(),
        Practice2.routeName: (context) => const Practice2(),
        Practice3.routeName: (context) => Practice3(),
        Practice4.routeName: (context) => Practice4(),
        Practice5.routeName: (context) => const Practice5(),
        Practice6.routeName: (context) => Practice6(),
        // Practice7 start
        Practice7.routeName: (context) => const Practice7(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        // Practice7 end
        // Practice8 start
        Practice8.routeName: (context) => const Practice8(),
        AddTodoScreen.routeName: (context) => AddTodoScreen(),
        // Practice8 end
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  static const String routeName = "/menu";
  const MenuScreen({super.key});

  String getTitleByIndex(int index) {
    return "Practice ${index + 1}";
  }

  void onTap(BuildContext context, int index) {
    Navigator.pushNamed(context, "/practice-${index + 1}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practices"),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(getTitleByIndex(index)),
            onTap: () {
              onTap(context, index);
            },
          );
        },
        itemCount: 8,
      ),
    );
  }
}
