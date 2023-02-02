import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String adress;
  final String email;
  final String phoneNumber;

  const Contact(
      {required this.adress, required this.email, required this.phoneNumber});

  Contact.fromJson(Map<String, dynamic> json)
      : adress = json['adress'],
        email = json['email'],
        phoneNumber = json['phoneNumber'];

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['adress'] = adress;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    return data;
  }

  Contact copyWith({
    String? adress,
    String? email,
    String? phoneNumber,
  }) {
    return Contact(
      adress: adress ?? this.adress,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  String toString() {
    return 'Contact: adress - $adress, email - $email, phoneNumber - $phoneNumber';
  }

  @override
  List<Object?> get props => [adress, email, phoneNumber];
}
