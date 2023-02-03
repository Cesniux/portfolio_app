import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/contact/bloc/contact_bloc.dart';
import 'package:portfolio_app/features/contact/repositories/contact_firebase_repository.dart';
import 'package:portfolio_app/features/contact/widgets/contact_info_box.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';

class ContactView extends StatelessWidget with BaseMixin {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(
        contactRepository: ContactFirebaseRepository(
          firebaseService: context.read<FirebaseService>(),
        ),
      )..add(ContactFetch()),
      child: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactInitial || state is ContactLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ContactLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactInfoBox(contactInfo: state.contactInfo),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  'My social media accounts:',
                  style: getTextTheme(context).titleSmall?.copyWith(
                      fontSize: 15,
                      color: CColor.blueTextcolor.withOpacity(0.7)),
                ),
                const MediaSection(),
              ],
            );
          }

          return const Text('Erroro');
        },
      ),
    );
  }
}
