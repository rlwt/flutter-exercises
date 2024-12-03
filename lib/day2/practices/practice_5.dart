import 'dart:async';
import 'package:flutter/material.dart';

class Practice5 extends StatelessWidget {
  static const String routeName = "/practice-5";
  const Practice5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 5 Screen"),
      ),
      body: Center(
        child: FilledButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TimerScreen();
              }));
            },
            child: const Text("To Timer")),
      ),
    );
  }
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimerScreenState();
  }
}

class _TimerScreenState extends State<TimerScreen> {
  int counter = 0;
  Timer? timer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  void stopTimer() {
    timer?.cancel();
  }

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        counter++;
        print("_TimerScreenState $counter");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TimerScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$counter",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            FilledButton(
                onPressed: () {
                  stopTimer();
                },
                child: Text("Pause")),
            FilledButton(
                onPressed: () {
                  startTimer();
                },
                child: Text("Resume")),
          ],
        ),
      ),
    );
  }
}
