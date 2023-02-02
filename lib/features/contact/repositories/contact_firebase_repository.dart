import 'package:portfolio_app/features/contact/models/contact.dart';
import 'package:portfolio_app/features/contact/repositories/contact_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class ContactFirebaseRepository implements ContactRepository {
  final FirebaseService firebaseService;

  ContactFirebaseRepository({required this.firebaseService});

  @override
  Future<Contact> fetchContact() async {
    var response = await firebaseService.contactRef.doc('UNGIc8gq8fQG0aACazIT').get();
   Map<String, dynamic> contactData = response.data() as Map<String, dynamic>;
    return Contact.fromJson(contactData);
  }
}
