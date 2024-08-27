import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_study_life_clone/services/firestore.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final FirestoreTasks firestoreTasks = FirestoreTasks();
  final TextEditingController textController = TextEditingController();

//a dialog box to add tasks
  void openTaskBox({String? docID}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                //user input text
                controller: textController,
              ),
              actions: [
                //save button
                ElevatedButton(
                    onPressed: () {
                      //adds tasks
                      if (docID == null) {
                        firestoreTasks.addTask(textController.text);
                      }
                      //update existing task
                      else {
                        firestoreTasks.updateTask(docID, textController.text);
                      }

                      //clear text controller
                      textController.clear();
                      //close box
                      Navigator.pop(context);
                    },
                    child: const Text('add'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
        backgroundColor: Colors.indigoAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openTaskBox,
        tooltip: 'Add task',
        shape: const CircleBorder(),
        child: const Icon(Icons.add_card),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreTasks.getTasksStream(),
        builder: (context, snapshot) {
          //logic(if we have data ,get docs)
          if (snapshot.hasData) {
            List tasksList = snapshot.data!.docs;
            //display as a list
            return ListView.builder(
              itemCount: tasksList.length,
              itemBuilder: (context, index) {
//get individual doc
                DocumentSnapshot document = tasksList[index];
                String docID = document.id;

//get task from each doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String taskText = data['task'];

//display in a list tile
                return ListTile(
                  title: Text(taskText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //update button
                      IconButton(
                          onPressed: () => openTaskBox(docID: docID),
                          icon: const Icon(Icons.edit)),
                      //delete button
                      IconButton(onPressed: ()=>firestoreTasks.deleteTask(docID), 
                      icon: const Icon(Icons.delete))
                    ],
                  ),
                );
              },
            );
          }
          //if there is no data

          else {
            return const Text('No tasks');
          }
        },
      ),
    );
  }
}
