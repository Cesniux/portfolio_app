import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class ContactView extends StatelessWidget with BaseMixin {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                      '+37062831280',
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
                      'domantas.cesna@gmail.com',
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
                      'Tauro g. 8, Vilnius, Lithuania',
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
