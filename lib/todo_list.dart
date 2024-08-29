import 'package:flutter/material.dart';
import 'package:flutter_to_do/folder/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChnaged;
  final onDeleteItem;
  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChnaged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          //print('Clicked on ToDo item.');
          onToDoChnaged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.todotext!,
          style: TextStyle(
            fontSize: 16,
            color: todo.isDone ? Colors.black12 : Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 55,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              icon: Icon(Icons.delete),
              onPressed: () {
                // print('Clicked on delete icon');
                onDeleteItem(todo.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}
