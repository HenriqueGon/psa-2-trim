import 'package:flutterzada/app/model/database/connection.dart';
import 'package:flutterzada/app/model/entities/to_do.dart';
import 'package:sqflite/sqflite.dart';

class ToDoService {
  save(ToDo toDo) async {
    validateTitle(toDo.title);
    validateDescription(toDo.description);
  }

  remove(dynamic id) async {}

  Future<List<ToDo>> find() {}

  validateTitle(String title) {
    var max = 50;

    if (title.isEmpty) {
      throw Exception('O título é obrigatório.');
    } else if (title.length > max) {
      throw Exception('O título deve possuir no máximo $max caracteres.');
    }
  }

  validateDescription(String description) {
    var max = 255;

    if (description.length > max) {
      throw Exception('A descrição deve possuir no máximo $max caracteres.');
    }
  }
}
