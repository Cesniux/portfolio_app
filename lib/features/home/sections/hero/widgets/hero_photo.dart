import 'package:cached_network_image/cached_network_image.dart';
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
            child: CachedNetworkImage(
          width: 180,
          height: 180,
          fit: BoxFit.cover,
          imageUrl: imageUrl,
        )),
      ),
    );
  }
}
