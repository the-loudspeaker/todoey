import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    String? newTaskTile;
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
                newTaskTile = value;
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
              onPressed: () {
                print(newTaskTile);
              },
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
