import 'package:flutter/material.dart';


class tasks{
  final String name;
   bool isdone;
  tasks({this.name,this.isdone = false});

  void toggle(){
    isdone = !isdone;
  }
}