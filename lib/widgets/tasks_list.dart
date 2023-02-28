import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TasksTile(
          taskname: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback: (value) {
            setState(() {
              widget.tasks[index].taskDone();
            });
          },
        );
      }),
      itemCount: widget.tasks.length,
    );
  }
}
