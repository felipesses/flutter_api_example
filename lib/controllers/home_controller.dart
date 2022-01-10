import 'package:api_consuming_example/models/todo_model.dart';
import 'package:api_consuming_example/services/json_placeholder_service.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceholderService _service;

  HomeController(this._service);

  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
