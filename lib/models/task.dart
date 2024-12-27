class Task {
  final int? id;
  final String title;
  final bool completed;

  Task({this.id, required this.title, this.completed = false});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'completed': completed ? 1 : 0,
    };
  }

  static Task fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      completed: map['completed'] == 1,
    );
  }
}
