class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

final todos = List.generate(
    20, (index) => Todo('Todo $index', 'A description of todo $index'));
