import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/contact/models/contact.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class ContactInfoBox extends StatelessWidget with BaseMixin {
  final Contact contactInfo;
  const ContactInfoBox({super.key, required this.contactInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact',
          style: getTextTheme(context).titleMedium,
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          'Domantas Čėsna',
          style: textTheme.labelLarge,
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone: ',
                      style: getTextTheme(context).bodyMedium,
                    ),
                    Text(
                      contactInfo.phoneNumber,
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email: ',
                      style: getTextTheme(context).bodyMedium,
                    ),
                    Text(
                      contactInfo.email,
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Adress: ',
                      style: getTextTheme(context).bodyMedium,
                    ),
                    Text(
                      contactInfo.adress,
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
