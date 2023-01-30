import 'package:equatable/equatable.dart';

class WorksWork extends Equatable {
  final String description;
  final String imageUrl;
  final String keyword;
  final String workTitle;
  final String year;

  const WorksWork(
      {required this.description,
      required this.imageUrl,
      required this.keyword,
      required this.workTitle,
      required this.year});

  WorksWork.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        imageUrl = json['imageUrl'],
        keyword = json['keyword'],
        workTitle = json['workTitle'],
        year = json['year'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    data['keyword'] = keyword;
    data['workTitle'] = workTitle;
    data['year'] = year;
    return data;
  }

  WorksWork copyWith({
    String? description,
    String? imageUrl,
    String? keyword,
    String? workTitle,
    String? year,
  }) {
    return WorksWork(
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        keyword: keyword ?? this.keyword,
        workTitle: workTitle ?? this.workTitle,
        year: year ?? this.year);
  }

  @override
  String toString() {
    return 'WorksWork: description - $description, imageUrl - $imageUrl, keyword - $keyword, workTitle - $workTitle, year - $year';
  }

  @override
  List<Object?> get props => [description, imageUrl, keyword, workTitle, year];
}
