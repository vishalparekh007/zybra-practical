import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zybra_practical/services/db_helper.dart';

import '../models/task.dart';

class TaskViewModel extends ChangeNotifier {
  final DatabaseHelper _databaseHelper;

  TaskViewModel(this._databaseHelper);

  List<Task> tasks = [];

  Future<void> fetchTasks() async {
    tasks = await _databaseHelper.getTasks();
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    await _databaseHelper.insertTask(task);
    await fetchTasks();
  }

  Future<void> updateTask(Task task) async {
    await _databaseHelper.updateTask(task);
    await fetchTasks();
  }

  Future<void> deleteTask(int id) async {
    await _databaseHelper.deleteTask(id);
    await fetchTasks();
  }
}

final databaseProvider = Provider((ref) => DatabaseHelper());
final taskViewModelProvider = ChangeNotifierProvider((ref) {
  return TaskViewModel(ref.watch(databaseProvider));
});
