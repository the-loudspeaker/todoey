import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Add tasks by clicking the button below."),
    Task(name: "Mark a task as done by clicking the checkbox.", isDone: true),
    Task(name: "Long press a task to delete.")
  ];
  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.removeWhere((item) => item == task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
