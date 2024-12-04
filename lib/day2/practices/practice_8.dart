import 'package:flutter/material.dart';

class Practice8 extends StatefulWidget {
  static const String routeName = "/practice-8";
  const Practice8({super.key});

  @override
  State<StatefulWidget> createState() => _Practice8State();
}

class _Practice8State extends State<Practice8> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice 8 Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result =
              await Navigator.pushNamed(context, AddTodoScreen.routeName);
          if (result != null) {
            todos.add(Todo(name: result as String, done: false));
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo.name),
            trailing: Checkbox(
              value: todo.done,
              onChanged: (bool? value) {
                todos[index] = Todo(name: todo.name, done: value ?? false);
                setState(() {});
              },
            ),
          );
        },
        itemCount: todos.length,
      ),
    );
  }
}

class AddTodoScreen extends StatelessWidget {
  static const String routeName = "/add-todo";
  final formKey = GlobalKey<FormState>();
  final nameTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TextFormField(
              controller: nameTEC,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Name"),
                hintText: "Anything Todo",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) return "Required";
                return null;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            FilledButton(
              onPressed: () {
                final valid = formKey.currentState!.validate();
                if (valid) {
                  Navigator.pop(context, nameTEC.text);
                }
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}

class Todo {
  final String name;
  final bool done;
  Todo({required this.name, required this.done});
}
