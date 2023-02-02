part of 'contact_bloc.dart';

abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  final Contact contactInfo;

  ContactLoaded({required this.contactInfo});
}

class ContactError extends ContactState {}
