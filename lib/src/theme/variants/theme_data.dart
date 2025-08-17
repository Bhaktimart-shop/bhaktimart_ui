part of '../app_theme.dart';

ThemeData _appTheme({required BhaktimartColors colors}) {
  final dimensions = dimensionResources();
  final fonts = fontResources(colors, BhaktimartFont.polySans);

  final onPrimaryBackground = colors.on.backgroundPrimary.brand;
  final onLayerPrimary = colors.on.layerPrimary.primary;
  final layerPrimary = colors.layer.primary;

  final splashAndSelectionColor = onPrimaryBackground.withValues(alpha: 0.3);

  return ThemeData(
    extensions: [colors, fonts, dimensions],
    pageTransitionsTheme: pageTransitionsTheme(),
    useMaterial3: true,
    colorScheme: ColorScheme.light(surface: layerPrimary),
    brightness: Brightness.light,
    cardColor: layerPrimary,
    focusColor: colors.layer.tertiary,
    hintColor: onLayerPrimary,
    primaryColor: onPrimaryBackground,
    scaffoldBackgroundColor: layerPrimary,
    splashColor: WidgetStateColor.resolveWith((_) => splashAndSelectionColor),
    textTheme: textTheme(fonts),
    appBarTheme: appBarTheme(colors, fonts),
    buttonTheme: buttonTheme(colors),
    checkboxTheme: checkboxTheme(dimensions, colors),
    dialogTheme: dialogTheme(dimensions, colors),
    elevatedButtonTheme: elevatedButtonTheme(fonts),
    popupMenuTheme: popupMenuTheme(colors),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: onLayerPrimary),
    tabBarTheme: tabBarTheme(colors, fonts),
    textButtonTheme: textButtonTheme(dimensions, fonts),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: onPrimaryBackground,
      selectionColor: splashAndSelectionColor,
    ),
    materialTapTargetSize: MaterialTapTargetSize.padded,
  );
}
