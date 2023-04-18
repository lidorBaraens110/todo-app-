import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    required this.name,
    required this.isDone,
    required this.toggleCheckBox,
    required this.deleteTask,
    super.key,
  });
  final Function() deleteTask;
  final Function(bool?)? toggleCheckBox;
  final String name;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(name,
          style: TextStyle(
              decoration:
                  isDone ? TextDecoration.lineThrough : TextDecoration.none)),
      trailing: Checkbox(
        value: isDone,
        onChanged: toggleCheckBox,
      ),
    );
  }
}
