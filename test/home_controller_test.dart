import 'package:api_consuming_example/controllers/home_controller.dart';
import 'package:api_consuming_example/models/todo_model.dart';
import 'package:api_consuming_example/services/json_placeholder_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceholderServiceMock extends Mock
    implements JsonPlaceholderService {}

void main() {
  test('deve preencher a lista corretamente', () async {
    final service = JsonPlaceholderServiceMock();

    when(() => service.getTodos()).thenAnswer(
      (_) async => [TodoModel.stub()],
    );

    final controller = HomeController(service);

    await controller.fetchAllTodos();

    expect(controller.todos.length, 1);
  });
}
