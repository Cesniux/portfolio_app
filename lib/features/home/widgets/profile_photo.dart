import 'package:flutter/widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    Key? key,
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
            child: Image.asset(
          'assets/images/profile_image.jpeg',
          width: 180,
          height: 180,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
