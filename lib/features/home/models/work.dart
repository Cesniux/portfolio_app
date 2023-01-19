import 'package:equatable/equatable.dart';

class Work extends Equatable {
  final String workTitle;
  final String year;
  final String keyword;
  final String description;
  final String imageUrl;

  const Work(
      {required this.workTitle,
      required this.year,
      required this.keyword,
      required this.description,
      required this.imageUrl});

  Work.fromJson(Map<String, dynamic> json)
      : workTitle = json['workTitle'],
        year = json['year'],
        keyword = json['keyword'],
        description = json['description'],
        imageUrl = json['imageUrl'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['workTitle'] = workTitle;
    data['year'] = year;
    data['keyword'] = keyword;
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    return data;
  }

  Work copyWith({
    String? workTitle,
    String? year,
    String? keyword,
    String? description,
    String? imageUrl,
  }) {
    return Work(
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      keyword: keyword ?? this.keyword,
      workTitle: workTitle ?? this.workTitle,
      year: year ?? this.year,
    );
  }

  @override
  String toString() {
    return 'WorkObject: workTitle - $workTitle, year - $year, keyword - $keyword, description - $description, imageUrl - $imageUrl';
  }

  @override
  List<Object?> get props => [workTitle, year, keyword, description, imageUrl];
}
