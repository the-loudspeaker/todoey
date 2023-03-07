import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];
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
