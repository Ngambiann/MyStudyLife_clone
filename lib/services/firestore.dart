import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreTasks {
  //get collection of tasks
final CollectionReference tasks=FirebaseFirestore.instance.collection('Tasks');

  //CREATE:add new tasks
  Future<void>addTask(String task){
    return tasks.add({
      'task':task,
      'timestamp':Timestamp.now()
    });
  }



  //READ:get the tasks from the db
  Stream<QuerySnapshot>getTasksStream(){
    final tasksStream = tasks.orderBy('timestamp',descending: false).snapshots();
    return tasksStream;
  }
 


  //UPDATE:update tasks given the tasksID
  Future<void> updateTask(String docID, String newTask){
    return tasks.doc(docID).update({
      'task':newTask,
      'timestamp':Timestamp.now(),

    });
  }


  //DELETE:delete tasks given the tasksID
  Future<void> deleteTask(String docID){
    return tasks.doc(docID).delete();

  }





}