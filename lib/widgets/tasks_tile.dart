import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    Key? key,
    required this.taskName,
    required this.isChecked,
    required this.checkBoxCallback,
  }) : super(key: key);

  final bool isChecked;
  final String taskName;
  final Function(bool?) checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskName,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.amberAccent,
          onChanged: checkBoxCallback,
        ));
  }
}
