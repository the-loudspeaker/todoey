import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({
    Key? key, required this.addTasksCallback,
  }) : super(key: key);
  final Function addTasksCallback;


  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 32,
                    fontWeight: FontWeight.w500)),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newTaskTitle = value;
              },
              cursorColor: Colors.amberAccent,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent, width: 5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent, width: 5),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
              onPressed: () {addTasksCallback(newTaskTitle);},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Add",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
            )
          ],
        ));
  }
}
