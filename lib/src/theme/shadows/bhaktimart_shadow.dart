part of '../app_theme.dart';

class BhaktimartShadow extends BoxShadow {
  static BoxShadow shadowS1(BuildContext context) => BoxShadow(
    color: context.colors.background.inverted.withValues(alpha: 0.06),
    blurRadius: 8,
  );

  static BoxShadow shadowM1(BuildContext context) => BoxShadow(
    color: context.colors.background.inverted.withValues(alpha: 0.08),
    blurRadius: 24,
  );
}
