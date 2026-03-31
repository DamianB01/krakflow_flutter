import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Task> tasks = [
    Task(title: "Zadanie z fluttera", deadline: "za tydzień", done: false, priority: "wysoki"),
    Task(title: "Posprzątać w domu", deadline: "jutro", done: true, priority: "niski"),
    Task(title: "Zrobić pranie", deadline: "dzisiaj", done: true, priority: "niski"),
    Task(title: "Zrobić zakupy", deadline: "za dwa dni", done: false, priority: "średni")
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
  final String priority;
  Task({required this.title, required this.deadline, required this.done, required this.priority,});
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
