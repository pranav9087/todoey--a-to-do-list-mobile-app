import 'package:flutter/material.dart';
import 'tasksfile.dart';

class taskdata extends ChangeNotifier{
  List<tasks> task = [
    tasks(name: 'buy milk'),
    tasks(name: 'buy bread'),
    tasks(name: 'buy groceries')
  ];
int get taskcount{
  return task.length;
}
void addtask(String newtext){
  final newtask = tasks(name: newtext);
  task.add(newtask);
  notifyListeners();
}
void updatetask(tasks secondtask){
secondtask.toggle();
notifyListeners();
}
void deletetask(tasks firsttask){
  task.remove(firsttask);
  notifyListeners();
}
}