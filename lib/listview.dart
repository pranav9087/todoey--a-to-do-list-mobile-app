import 'package:flutter/material.dart';
import 'listtile.dart';
import 'tasksfile.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';

class listview extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  Consumer<taskdata>(builder: (context,taskdata,child) {
      return ListView.builder(itemBuilder: (context, index) {
        return listtile(
          longpressed: () {
            taskdata.deletetask(taskdata.task[index]);
          },
          title: taskdata.task[index].name,
          ischanged: taskdata.task[index].isdone,
          checkboxcallback: (newvalue) {
            taskdata.updatetask(taskdata.task[index]);
          },
        );
      });
    });
    }
  }

