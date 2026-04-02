class TaskRepository {
  static List<Task> tasks = [
    Task(title: "Zadanie z fluttera", deadline: "za tydzień", done: false, priority: "wysoki"),
    Task(title: "Posprzątać w domu", deadline: "jutro", done: true, priority: "niski"),
    Task(title: "Zrobić pranie", deadline: "dzisiaj", done: true, priority: "niski"),
    Task(title: "Zrobić zakupy", deadline: "za dwa dni", done: false, priority: "średni"),
  ];
}

class Task {
  final String title;
  final String deadline;
  final bool done;
  final String priority;

  Task({
    required this.title,
    required this.deadline,
    required this.done,
    required this.priority,
  });
}