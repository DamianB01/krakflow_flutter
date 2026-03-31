import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Task> tasks = [
<<<<<<< HEAD
    Task(title: "Zadanie z fluttera", deadline: "za tydzień", done: false, priority: "wysoki"),
    Task(title: "Posprzątać w domu", deadline: "jutro", done: true, priority: "niski"),
    Task(title: "Zrobić pranie", deadline: "dzisiaj", done: true, priority: "niski"),
    Task(title: "Zrobić zakupy", deadline: "za dwa dni", done: false, priority: "średni")
=======
    Task(title: "Zadanie z fluttera", deadline: "za tydzień", done: false),
    Task(title: "Posprzątać w domu", deadline: "jutro", done: true),
    Task(title: "Zrobić pranie", deadline: "dzisiaj", done: true),
    Task(title: "Zrobić zakupy", deadline: "za dwa dni", done: true)
>>>>>>> edd97fa6c508473d94b240374617e07a0771fc0b
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
<<<<<<< HEAD
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return TaskCard(
                      title: task.title,
                      subtitle: "${task.deadline} | Priorytet: ${task.priority}",
                      icon: task.done
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked,
=======
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index){
                    return Column(children: [
                      Text(tasks[index].title),
                      Text(tasks[index].deadline),
                    ],
>>>>>>> edd97fa6c508473d94b240374617e07a0771fc0b
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
<<<<<<< HEAD
  final String priority;
  Task({required this.title, required this.deadline, required this.done, required this.priority,});
=======
  Task({required this.title, required this.deadline, required this.done});
>>>>>>> edd97fa6c508473d94b240374617e07a0771fc0b
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
