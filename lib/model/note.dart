class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      modifiedTime: DateTime.parse(json['modifiedTime']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'modifiedTime': modifiedTime.toIso8601String(),
    };
  }

}




List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Make your List task here',
    content:
    'List your all task for here.',
    modifiedTime: DateTime(2023,10,1,34,5),
  ),
];