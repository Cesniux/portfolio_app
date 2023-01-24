enum ScreenType {
  mobile,
  tablet,
  desktop,
}

ScreenType getScreenType(double maxWidth) {
  if (maxWidth <= 480) {
    return ScreenType.mobile;
  } else if (maxWidth <= 1024) {
    return ScreenType.tablet;
  }
  return ScreenType.desktop;
}
