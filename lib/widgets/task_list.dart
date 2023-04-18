import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_item.dart';

import '../providers/tasks_provider.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (BuildContext context, tasks, Widget? child) {
        // final task = tasks.tasks[index];
        return ListView.builder(
            itemBuilder: (context, index) {
              final Task task = tasks.tasks[index];
              return TaskItem(
                name: task.name,
                isDone: task.isDone,
                toggleCheckBox: (val) {
                  tasks.toggle(task);
                },
                deleteTask: () {
                  tasks.deleteTasks(task);
                },
              );
            },
            itemCount: tasks.getLength());
      },
    );
  }
}
