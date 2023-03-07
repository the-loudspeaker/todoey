import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    Key? key,
    required this.taskName,
    required this.isChecked,
    required this.checkBoxCallback,
    required this.longPressCallback,
  }) : super(key: key);

  final bool isChecked;
  final String taskName;
  final Function(bool?) checkBoxCallback;
  final Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
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
