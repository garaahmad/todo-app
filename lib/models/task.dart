class Task {
  final int? id;
  final String title;
  final String description;
  final int isComplete;

  Task({
    this.id,
    required this.title,
    required this.description,
    this.isComplete = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isComplete': isComplete,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as int?,
      title: map['title'] as String,
      description: map['description'] as String,
      isComplete: map['isComplete'] as int,
    );
  }

  Task copyWith({
    int? id,
    String? title,
    String? description,
    int? isComplete,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
