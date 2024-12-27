import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zybra_practical/models/task.dart';
import 'package:zybra_practical/providers/task_providers.dart';

import 'add_task_view.dart';

class TaskListView extends ConsumerWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskViewModel = ref.watch(taskViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddTaskView()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: taskViewModel.tasks.length,
        itemBuilder: (context, index) {
          final task = taskViewModel.tasks[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.completed,
              onChanged: (value) {
                taskViewModel.updateTask(
                    Task(id: task.id, title: task.title, completed: value!));
              },
            ),
            onLongPress: () {
              taskViewModel.deleteTask(task.id!);
            },
          );
        },
      ),
    );
  }
}
