import 'package:flutter/widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroPhoto extends StatelessWidget {
  final String imageUrl;
  const HeroPhoto({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 34),
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            offset: const Offset(-5.0, 8),
            color: CColor.backgroundColorDifferent,
            spreadRadius: 3,
          )
        ]),
        child: ClipOval(
            child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/profile_image.jpeg?alt=media&token=a56f365d-4067-4a67-836f-305301cc0145',
          width: 180,
          height: 180,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
