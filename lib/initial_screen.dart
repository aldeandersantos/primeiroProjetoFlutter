import 'package:flutter/material.dart';
import 'task.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Padding(
          padding: EdgeInsets.all(32.0),
          child: Text("Tarefas"),
        ),
      ),
      body: ListView(children: const [
        Tasks("Estudar"),
        Tasks("Academia"),
        Tasks("Natação"),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}