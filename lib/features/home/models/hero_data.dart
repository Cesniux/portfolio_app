import 'package:equatable/equatable.dart';

class HeroData extends Equatable {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;

  const HeroData({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  HeroData.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? 'Domantas',
        image = json['image'],
        subtitle = json['subtitle'],
        buttonText = json['buttonText'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['subtitle'] = subtitle;
    data['buttonText'] = buttonText;
    return data;
  }

  HeroData copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? buttonText,
  }) {
    return HeroData(
      image: image ?? this.image,
      title: title ?? this.title,
      buttonText: subtitle ?? this.subtitle,
      subtitle: buttonText ?? this.buttonText,
    );
  }

  @override
  String toString() {
    return "HeroData(title: $title, image: $image, subtitle: $subtitle, buttonText: $buttonText)";
  }

  @override
  List<Object?> get props => [image, title, buttonText, subtitle];
}
