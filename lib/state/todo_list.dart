import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_todolist/models/todo.dart";

// ignore: specify_nonobvious_property_types, non_constant_identifier_names
final TodoListProvider = NotifierProvider.autoDispose<TodoList, List<Todo>>(
  TodoList.new,
);

class TodoList extends Notifier<List<Todo>> {
  // espone una lista di Todo
  @override
  List<Todo> build() {
    // restituisce lo stesso tipo che esponde il notifier, questo è lo stato iniziale
    return [];
  }

  void addTodo(String title, String description) {
    final newTodo = Todo(
      title: title,
      description: description,
      completed: false,
    );

    state = [
      ...state,
      newTodo,
    ]; // or state.add(newTodo) + ref.notifyListeners();
    // state in RiverPod è implicita
  }

  /*void removeTodo(Todo todo){
    final newList = [...state]
    ..remove(todo);
    state = newList;
  }*/

  void removeTodo(int i) {
    state.removeAt(i);
    ref.notifyListeners();
  }

  void checkToDo(int i, bool? value) {
    /* todo.completed = true;
    ref.notifyListeners();*/ // Modo scorreto di farlo
    if (value == null) return;
    state[i].completed = !value;
    ref.notifyListeners();
    // state[i].completed = true;
    // ref.notifyListeners();
  }

  void resetTodo() {
    state.clear();
    ref.notifyListeners();
    // oppure ancora meglio: state = [];
  }

  void invertState() {
    for (var i = 0; i < state.length; i++) {
      state[i].completed = !state[i].completed;
    }
  }
}
