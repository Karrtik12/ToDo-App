import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tododo/Widgets/task_lists.dart';
import 'add_task.dart';
import 'package:tododo/models/task_data.dart';
class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context:context,isScrollControlled: true,

              builder: (context)=>SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ));
          },
        backgroundColor: Colors.lightBlue,
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(30.0, 60.0, 20.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.lightBlue,
                      ),
                      backgroundColor: Colors.white,
                      radius:30.0 ,
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "TodoDo",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                        "${Provider.of<TaskData>(context).taskList.length} Tasks",
                        style:TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ],)
            ),
            const SizedBox(height: 50.0,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                    child:TileList()
                  )
              ),
            ),

          ]),
    );
  }
}