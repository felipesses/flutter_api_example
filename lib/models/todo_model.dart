class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  static TodoModel fromJson(dynamic map) {
    return TodoModel(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      completed: map['completed'],
    );
  }

  static TodoModel stub() => TodoModel(
        id: 1,
        userId: 1,
        title: 'Loren ipsum',
        completed: true,
      );
}
