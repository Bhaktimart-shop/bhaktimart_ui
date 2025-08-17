part of '../app_theme.dart';

enum BhaktimartTheme { bhaktimart }

// False positive from dart code metrics,
// as it's only used outside of this project.
// ignore: unused-code
extension BhaktimartThemeData on BhaktimartTheme {
  // False positive from dart code metrics,
  // as it's only used outside of this project.
  // ignore: unused-code
  ThemeData get themeData => switch (this) {
    BhaktimartTheme.bhaktimart => _appTheme(
      colors: BhaktimartColors.fromPrimitives(standardPrimitives),
    ),
  };

  BhaktimartFont get font => switch (this) {
    BhaktimartTheme.bhaktimart => BhaktimartFont.polySans,
  };
}
