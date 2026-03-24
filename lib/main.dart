import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Task> tasks = [
    Task(title: "Zadanie z fluttera", deadline: "za tydzień", done: false),
    Task(title: "Posprzątać w domu", deadline: "jutro", done: true),
    Task(title: "Zrobić pranie", deadline: "dzisiaj", done: true),
    Task(title: "Zrobić zakupy", deadline: "za dwa dni", done: true)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KrakFlow"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Masz dziś ${tasks.length} zadania"),
              SizedBox(height: 20),
              Text(
                "Dzisiejsze zadania",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index){
                    return Column(children: [
                      Text(tasks[index].title),
                      Text(tasks[index].deadline),
                    ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Task {
  final String title;
  final String deadline;
  final bool done;
  Task({required this.title, required this.deadline, required this.done});
}

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
