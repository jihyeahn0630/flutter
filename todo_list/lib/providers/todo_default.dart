import 'package:flutter/material.dart';
import 'package:todo_list/models/todo.dart';

class TodoDefault {
  List<Todo> dummyTodos = [
    Todo(id: 1, title: 'flutter study', description: '뽕뽑는 플러터 읽기'),
    Todo(id: 2, title: 'go to bookstore', description: '뽕뽑는 플러터 사러가기'),
    Todo(id: 3, title: 'workout in park', description: '집근처 공원에서 운동하기'),
    Todo(id: 4, title: 'preparing for work', description: '내일이 월요일이라니...'),
  ];

  List<Todo> getTodos() {
    return dummyTodos;
  }

  Todo getTodo(int id) {
    return dummyTodos[id];
  }

  Todo addTodo(Todo todo) {
    Todo newTodo = Todo(
        id: dummyTodos.length + 1,
        title: todo.title,
        description: todo.description);
    dummyTodos.add(newTodo);

    return newTodo;
  }

  void deleteTodo(int id) {
    for (int i = 0; i < dummyTodos.length; i++) {
      if (dummyTodos[i].id == id) {
        dummyTodos.removeAt(i);
      }
    }
  }

  void updateTodo(Todo todo) {
    for (int i = 0; i < dummyTodos.length; i++) {
      if (dummyTodos[i].id == todo.id) dummyTodos[i] = todo;
    }
  }
}
