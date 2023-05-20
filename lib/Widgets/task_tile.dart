import 'package:flutter/material.dart';



class ListTiles extends StatelessWidget{
  final bool? boolean;
  final  taskTitle;
  final  toggleCheckBoxState;
  final longPressCallBack;
  ListTiles({this.boolean,this.taskTitle,this.toggleCheckBoxState,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,
        style: TextStyle(fontSize: 18.0,
          decoration:boolean==false?TextDecoration.none:TextDecoration.lineThrough
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: boolean,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
