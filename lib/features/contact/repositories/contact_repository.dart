import 'package:portfolio_app/features/contact/models/contact.dart';

abstract class ContactRepository {
  Future<Contact> fetchContact();
}
