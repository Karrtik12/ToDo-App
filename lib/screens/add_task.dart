import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododo/models/task_data.dart';
class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xff757575),
      child: Container(
        decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          )
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children:<Widget>[
              const Text("Add Task",style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width:3.0 ,color: Colors.lightBlue),
                      ),
                    labelText: "Enter Task"
                  ),
                  onChanged: (value){
                    text=value;
                  },
                ),
              ),
              SizedBox(height:20.0),
              TextButton(
                onPressed:(){
                  Provider.of<TaskData>(context,listen: false).addToList(text);
                  Navigator.pop(context);
                  },
                child: Container(
                  width: 200.0,
                  padding: EdgeInsets.all( 10.0),
                  decoration: BoxDecoration(

                      color: Colors.lightBlue,
                  ),
                  child: Center(
                      child: Text(
                          "Add",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      )),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
