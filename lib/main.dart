import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todoscreen.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=> taskdata(),
      child: MaterialApp(
        home: todoscreen(),
      ),
    );
  }
}



