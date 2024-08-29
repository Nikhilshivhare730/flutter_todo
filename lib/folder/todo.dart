class ToDo {
  String? id;
  String? todotext;
  bool isDone;
  ToDo({required this.id, this.isDone = false, required this.todotext});
  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', todotext: 'break_____', isDone: true),
      ToDo(id: '02', todotext: 'tallent_____', isDone: true),
      ToDo(id: '03', todotext: 'open_____'),
      ToDo(id: '04', todotext: 'finish_____'),
      ToDo(id: '05', todotext: 'break_____'),
    ];
  }
}
