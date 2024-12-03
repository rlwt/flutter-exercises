import 'dart:developer';

import 'package:flutter/material.dart';

class Practice7 extends StatelessWidget {
  static const String routeName = "/practice-7";
  const Practice7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, "/profile");
                  if (result == null) return;
                  log("result $result");
                },
                child: Text("To Profile")),
            FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/settings");
                },
                child: Text("To Settings")),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  static const String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileScreen"),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pop(context, "Return from profile");
          },
          child: const Text("Back"),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SettingsScreen"),
      ),
    );
  }
}
