import 'package:flutter/material.dart';

class WorkDetailImage extends StatelessWidget {
  final String imageUrl;
  const WorkDetailImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27),
      child: SizedBox(
        width: double.infinity,
        child: ClipRect(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
