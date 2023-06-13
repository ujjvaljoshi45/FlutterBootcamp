import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'task 1'), Task(name: 'task 2')];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void setData(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void toggleIsDone(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
