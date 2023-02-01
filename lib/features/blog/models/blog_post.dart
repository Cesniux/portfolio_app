import 'package:equatable/equatable.dart';

class BlogPost extends Equatable {
  final String date;
  final String description;
  final String timeStamp;
  final String title;
  final String topicKeywords;

  const BlogPost(
      {required this.date,
      required this.description,
      required this.timeStamp,
      required this.title,
      required this.topicKeywords});

  BlogPost.fromJson(Map<String, dynamic> json)
      : date = json['date'],
        description = json['description'],
        timeStamp = json['timeStamp'],
        title = json['title'],
        topicKeywords = json['topicKeywords'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['description'] = description;
    data['timeStamp'] = timeStamp;
    data['title'] = title;
    data['topicKeywords'] = topicKeywords;
    return data;
  }

  BlogPost copyWith({
    String? date,
    String? description,
    String? timeStamp,
    String? title,
    String? topicKeywords,
  }) {
    return BlogPost(
        date: date ?? this.date,
        description: description ?? this.description,
        timeStamp: timeStamp ?? this.timeStamp,
        title: title ?? this.title,
        topicKeywords: topicKeywords ?? this.topicKeywords);
  }

  @override
  String toString() {
    return 'BlogPost: date - $date, description - $description, timeStamp - $timeStamp, title - $title, topicKeywords - $topicKeywords';
  }

  @override
  List<Object?> get props =>
      [date, description, timeStamp, title, topicKeywords];
}
