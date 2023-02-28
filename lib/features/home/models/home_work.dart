import 'package:equatable/equatable.dart';

class HomeWork extends Equatable {
  final String workTitle;
  final String year;
  final String keyword;
  final String description;
  final String imageUrl;
  final String descriptionDetail;
  final String imageUrlDetail1;
  final String imageUrlDetail2;
  final String keywordDetail;

  const HomeWork({
    required this.workTitle,
    required this.year,
    required this.keyword,
    required this.description,
    required this.imageUrl,
    required this.descriptionDetail,
    required this.imageUrlDetail1,
    required this.imageUrlDetail2,
    required this.keywordDetail,
  });

  HomeWork.fromJson(Map<String, dynamic> json)
      : workTitle = json['workTitle'],
        year = json['year'],
        keyword = json['keyword'],
        description = json['description'],
        imageUrl = json['imageUrl'],
        descriptionDetail = json['descriptionDetail'],
        imageUrlDetail1 = json['imageUrlDetail1'],
        imageUrlDetail2 = json['imageUrlDetail2'],
        keywordDetail = json['keywordDetail'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['workTitle'] = workTitle;
    data['year'] = year;
    data['keyword'] = keyword;
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    data['descriptionDetail'] = descriptionDetail;
    data['imageUrlDetail1'] = imageUrlDetail1;
    data['imageUrlDetail2'] = imageUrlDetail2;
    data['keywordDetail'] = keywordDetail;
    return data;
  }

  HomeWork copyWith({
    String? workTitle,
    String? year,
    String? keyword,
    String? description,
    String? imageUrl,
    String? descriptionDetail,
    String? imageUrlDetail1,
    String? imageUrlDetail2,
    String? keywordDetail,
  }) {
    return HomeWork(
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        keyword: keyword ?? this.keyword,
        workTitle: workTitle ?? this.workTitle,
        year: year ?? this.year,
        descriptionDetail: descriptionDetail ?? this.descriptionDetail,
        imageUrlDetail1: imageUrlDetail1 ?? this.imageUrlDetail1,
        imageUrlDetail2: imageUrlDetail2 ?? this.imageUrlDetail2,
        keywordDetail: keywordDetail ?? this.keywordDetail);
  }

  @override
  String toString() {
    return 'WorkObject: workTitle - $workTitle, year - $year, keyword - $keyword, description - $description, imageUrl - $imageUrl, descriptionDetail - $descriptionDetail, imageUrlDetail1 - $imageUrlDetail1,imageUrlDetail2 - $imageUrlDetail2, keywordDetail - $keywordDetail';
  }

  @override
  List<Object?> get props => [
        workTitle,
        year,
        keyword,
        description,
        imageUrl,
        descriptionDetail,
        imageUrlDetail1,
        imageUrlDetail2,
        keywordDetail,
      ];
}
