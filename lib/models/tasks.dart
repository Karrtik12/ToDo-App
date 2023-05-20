class Task{
  final name;
   bool isDone;
  Task({this.name,this.isDone=false});

  void toggleDone(){
    isDone=!isDone;
  }
}