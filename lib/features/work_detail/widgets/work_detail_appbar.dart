import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/style/res/constants.dart';

class WorkDetailAppBar extends StatelessWidget {
  const WorkDetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        leading: Container(),
        elevation: 0,
        foregroundColor: CColor.blueTextcolor,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              borderRadius: BorderRadius.circular(10),
              splashColor: CColor.textColor.withOpacity(0.4),
              highlightColor: CColor.textColor.withOpacity(0.4),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back),
                    SizedBox(
                      width: 3.w,
                    ),
                    const Text('Go back')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
