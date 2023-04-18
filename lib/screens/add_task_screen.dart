import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/tasks_provider.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  // final _controller = TextEditingController();
  String task = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
        ),
        TextField(
          onChanged: (value) => task = value,
          autofocus: true,
          textAlign: TextAlign.center,
          // decoration: InputDecoration(),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            context.read<Tasks>().addTask(Task(name: task));
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              // padding: EdgeInsets.only(top: 20),
              minimumSize: const Size(10, 50)),
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
