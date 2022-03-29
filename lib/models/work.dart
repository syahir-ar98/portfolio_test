class Work {
  final String title;
  final String description;
  final List keywords;

  Work({
    required this.title,
    required this.description,
    required this.keywords,
  });

  String get getTitle => title;
  String get getDescription => description;
  List get getKeywords => keywords;

  factory Work.fromJson(Map<String, dynamic> json) {
    return Work(
      title: json['title'],
      description: json['description'],
      keywords: json['keywords'],
    );
  }
}
