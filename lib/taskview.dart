import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';
import 'tasksfile.dart';

class taskview extends StatelessWidget {

  String newtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            Padding(
              padding:  EdgeInsets.all(11),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newvalue){
                  newtext = newvalue;
                },
              ),
            ),
            FlatButton(
              color: Colors.red,
                onPressed: () {
                  Provider.of<taskdata>(context).addtask(newtext);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
