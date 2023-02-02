import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/features/contact/models/contact.dart';
import 'package:portfolio_app/features/contact/repositories/contact_repository.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository contactRepository;
  ContactBloc({required this.contactRepository}) : super(ContactInitial()) {
    on<ContactFetch>(_onContactFecth);
  }
  Future<void> _onContactFecth(ContactFetch event, Emitter emit) async {
    emit(ContactLoading());
    
    var contactInfo = await contactRepository.fetchContact();

    emit(ContactLoaded(contactInfo: contactInfo));
  }
}
