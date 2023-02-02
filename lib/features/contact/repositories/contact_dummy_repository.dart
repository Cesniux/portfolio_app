import 'package:portfolio_app/features/contact/models/contact.dart';
import 'package:portfolio_app/features/contact/repositories/contact_repository.dart';

class ContactDummyRepository implements ContactRepository {
  
  @override
  Future<Contact> fetchContact() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    const contactDummy = Contact(
        adress: 'Miami, Rumshore st.',
        email: 'email@gmail.com',
        phoneNumber: '+10012420111');
    return contactDummy;
  }
}
