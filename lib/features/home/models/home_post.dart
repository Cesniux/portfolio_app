import 'package:equatable/equatable.dart';

class HomePost extends Equatable {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;

  const HomePost({
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    required this.sectionTitle,
  });

  HomePost.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = json['date'],
        topicKeywords = json['topicKeywords'],
        description = json['description'],
        sectionTitle = json['sectionTitle'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['date'] = date;
    data['topicKeywords'] = topicKeywords;
    data['description'] = description;
    data['sectionTitle'] = sectionTitle;
    return data;
  }

  HomePost copyWith({
    String? title,
    String? date,
    String? topicKeywords,
    String? description,
    String? sectionTitle,
  }) {
    return HomePost(
        date: date ?? this.date,
        description: description ?? this.description,
        title: title ?? this.sectionTitle,
        topicKeywords: topicKeywords ?? this.topicKeywords,
        sectionTitle: sectionTitle ?? this.sectionTitle);
  }

  @override
  String toString() {
    return 'Post: date - $date, title - $title, topicKeywords - $topicKeywords, description - $description, sectionTitle - $sectionTitle';
  }

  @override
  List<Object?> get props =>
      [title, date, topicKeywords, description, sectionTitle];
}
