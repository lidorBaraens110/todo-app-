import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/providers/tasks_provider.dart';
import 'package:todoey_flutter/screens/task_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Tasks())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
