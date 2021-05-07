import 'package:flutter/material.dart';

class listtile extends StatelessWidget {


 final bool ischanged;
 final String title;
 final Function checkboxcallback;
 final Function longpressed;
 listtile({this.ischanged,this.title,this.checkboxcallback,this.longpressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressed,
      title: Text(title,style: TextStyle(decoration: ischanged?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
    activeColor: Colors.lightBlueAccent,
    value: ischanged,
    onChanged: checkboxcallback
    ),
    );
  }
}



