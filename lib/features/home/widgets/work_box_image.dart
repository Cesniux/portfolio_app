import 'package:flutter/material.dart';

class WorkBoxImage extends StatelessWidget {
  final String imageUrl;
  const WorkBoxImage({
    Key? key, required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          )),
    );
  }
}
