import 'package:flutter/material.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> taskList=[];
  void addToList(value){
    taskList.add(Task(name: value));
    notifyListeners();
  }
  void checked(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void removeList(value){
    taskList.remove(value);
    notifyListeners();
  }
}