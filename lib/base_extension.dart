import 'package:flutter/material.dart';

mixin BaseExtension {
  bool get isAndroid => true;

  bool get bottomSafeArea => isAndroid;

  MediaQueryData getMediaQuery(BuildContext context) {
    return MediaQuery.of(context);
  }

  double getMediaQueryHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  TextTheme getTextTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  double getMaxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getMaxHeight(BuildContext context, {bool appBar = true}) {
    final mediaQuery = MediaQuery.of(context);
    final topSafeArea = mediaQuery.padding.top;
    final bottomSafeArea = isAndroid ? mediaQuery.padding.bottom : 0;
    final appBarSize = appBar ? 64 : 0;
    return mediaQuery.size.height - topSafeArea - bottomSafeArea - appBarSize;
  }

  void printScreenHeight(context) {
    var screensize = getMediaQueryHeight(context);
    debugPrint('$screensize');
  }
}
