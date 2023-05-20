import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:tododo/models/task_data.dart';
import 'package:provider/provider.dart';

class TileList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context,index){
      return ListTiles(taskTitle: Provider.of<TaskData>(context).taskList[index].name,
        boolean: Provider.of<TaskData>(context).taskList[index].isDone,
        toggleCheckBoxState: (value){
          Provider.of<TaskData>(context,listen: false).checked(Provider.of<TaskData>(context,listen: false).taskList[index]);
        },
        longPressCallBack:(){
        Provider.of<TaskData>(context,listen: false).removeList(Provider.of<TaskData>(context,listen: false).taskList[index]);
        },
      );
    },itemCount: Provider.of<TaskData>(context).taskList.length,);
  }
}