import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zybra_practical/providers/task_providers.dart';

import '../models/task.dart';

class AddTaskView extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  AddTaskView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final task = Task(title: _controller.text);
                ref.read(taskViewModelProvider).addTask(task); // Use ref here
                Navigator.pop(context);
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
