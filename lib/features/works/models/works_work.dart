import 'package:equatable/equatable.dart';

class WorksWork extends Equatable {
  final String description;
  final String imageUrl;
  final String keyword;
  final String workTitle;
  final String year;
  final String descriptionDetail;
  final String imageUrlDetail1;
  final String imageUrlDetail2;

  const WorksWork({
    required this.description,
    required this.imageUrl,
    required this.keyword,
    required this.workTitle,
    required this.year,
    required this.descriptionDetail,
    required this.imageUrlDetail1,
    required this.imageUrlDetail2,
  });

  WorksWork.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        imageUrl = json['imageUrl'],
        keyword = json['keyword'],
        workTitle = json['workTitle'],
        year = json['year'],
        descriptionDetail = json['descriptionDetail'],
        imageUrlDetail1 = json['imageUrlDetail1'],
        imageUrlDetail2 = json['imageUrlDetail2'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    data['keyword'] = keyword;
    data['workTitle'] = workTitle;
    data['year'] = year;
    data['descriptionDetail'] = descriptionDetail;
    data['imageUrlDetail1'] = imageUrlDetail1;
    data['imageUrlDetail2'] = imageUrlDetail2;
    return data;
  }

  WorksWork copyWith({
    String? description,
    String? imageUrl,
    String? keyword,
    String? workTitle,
    String? year,
    String? descriptionDetail,
    String? imageUrlDetail1,
    String? imageUrlDetail2,
  }) {
    return WorksWork(
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        keyword: keyword ?? this.keyword,
        workTitle: workTitle ?? this.workTitle,
        year: year ?? this.year,
        descriptionDetail: descriptionDetail ?? this.descriptionDetail,
        imageUrlDetail1: imageUrlDetail1 ?? this.imageUrlDetail1,
        imageUrlDetail2: imageUrlDetail2 ?? this.imageUrlDetail2);
  }

  @override
  String toString() {
    return 'WorksWork: description - $description, imageUrl - $imageUrl, keyword - $keyword, workTitle - $workTitle, year - $year, descriptionDetail - $descriptionDetail, imageUrlDetail1 - $imageUrlDetail1,imageUrlDetail2 - $imageUrlDetail2';
  }

  @override
  List<Object?> get props => [
        description,
        imageUrl,
        keyword,
        workTitle,
        year,
        descriptionDetail,
        imageUrlDetail1,
        imageUrlDetail2
      ];
}
