import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TasksTile(
          taskName: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkBoxCallback: (value) {
            Provider.of<TaskData>(context, listen: false).toggleTask(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
          longPressCallback: () {
            Provider.of<TaskData>(context, listen: false).removeTask(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
        );
      }),
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
