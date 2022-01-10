import 'package:api_consuming_example/models/todo_model.dart';
import 'package:api_consuming_example/services/client_interface.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonPlaceholderService {
  final IHttpClient client;

  JsonPlaceholderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final response = await client.get(url);
    return (response as List).map(TodoModel.fromJson).toList();
  }
}
