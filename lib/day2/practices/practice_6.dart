import 'dart:developer';

import 'package:flutter/material.dart';

class Practice6 extends StatelessWidget {
  static const String routeName = "/practice-6";
  Practice6({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo6Screen"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(),
                hintText: "e.g admin@agmo.com",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) return "Required";
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) return "Required";
                if (value.length < 6) return "Must be a least 6 characters";
                return null;
              },
            ),
            const SizedBox(height: 12),
            FilledButton(
                onPressed: () {
                  final valid = formKey.currentState!.validate();
                  if (valid) {
                    log("Login Succesfull");
                  }
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
