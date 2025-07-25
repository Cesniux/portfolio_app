import 'package:equatable/equatable.dart';

class HomeHero extends Equatable {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;

  const HomeHero({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  HomeHero.fromJson(Map<String, dynamic> json)
      : title = json['title'],
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

  HomeHero copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? buttonText,
  }) {
    return HomeHero(
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
