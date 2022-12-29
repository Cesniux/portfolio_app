import 'package:flutter/material.dart';

class WorkBoxImage extends StatelessWidget {
  const WorkBoxImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            'assets/images/featured_works_image.png',
            fit: BoxFit.cover,
          )),
    );
  }
}