// ignore_for_file: avoid-returning-widgets
// The functions here are returning Flutter Theme objects and not actual widgets so we dont need to convert them into stateless widgets.

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

TabBarThemeData tabBarTheme(BhaktimartColors colors, FontResources fonts) =>
    TabBarThemeData(
      indicatorColor: colors.on.layerPrimary.primary,
      labelColor: colors.on.layerPrimary.primary,
      labelStyle: fonts.labelM.semiBold,
      unselectedLabelStyle: fonts.labelM,
      overlayColor: WidgetStateProperty.all(colors.background.primary),
    );

PopupMenuThemeData popupMenuTheme(BhaktimartColors colors) =>
    PopupMenuThemeData(surfaceTintColor: colors.on.backgroundPrimary.brand);

ElevatedButtonThemeData elevatedButtonTheme(FontResources fonts) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(textStyle: WidgetStateProperty.all(fonts.bodyL.light)),
    );

CheckboxThemeData checkboxTheme(
  DimensionResources dimensions,
  BhaktimartColors colors,
) => CheckboxThemeData(
  fillColor: WidgetStateProperty.all(colors.on.backgroundPrimary.brand),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(dimensions.radiusL1),
  ),
);

ButtonThemeData buttonTheme(BhaktimartColors colors) => ButtonThemeData(
  splashColor: colors.on.backgroundInverted.brand,
  colorScheme: ColorScheme.dark(
    primary: colors.on.backgroundPrimary.brand,
    surface: colors.background.primary,
  ),
);

TextButtonThemeData textButtonTheme(
  DimensionResources dimensions,
  FontResources fonts,
) => TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStateProperty.all(fonts.bodyL.light),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dimensions.radiusS2),
      ),
    ),
  ),
);

PageTransitionsTheme pageTransitionsTheme() => const PageTransitionsTheme(
  builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    TargetPlatform.linux: ZoomPageTransitionsBuilder(),
    TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.windows: ZoomPageTransitionsBuilder(),
  },
);

AppBarTheme appBarTheme(BhaktimartColors colors, FontResources fonts) =>
    AppBarTheme(
      backgroundColor: colors.background.primary,
      surfaceTintColor: colors.background.primary,
      titleTextStyle: fonts.labelL,
    );

DialogThemeData dialogTheme(
  DimensionResources dimensions,
  BhaktimartColors colors,
) => DialogThemeData(
  backgroundColor: colors.layer.primary,
  surfaceTintColor: colors.layer.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(dimensions.radiusS2),
  ),
);

TextTheme textTheme(FontResources fonts) => TextTheme(
  displayLarge: fonts.displayL,
  displayMedium: fonts.displayM,
  displaySmall: fonts.displayS,
  headlineLarge: fonts.headlineL.bold,
  headlineMedium: fonts.headlineM.bold,
  headlineSmall: fonts.headlineS.semiBold,
  titleLarge: fonts.headlineXS,
  titleMedium: fonts.labelL,
  titleSmall: fonts.labelL,
  bodyLarge: fonts.bodyL.light,
  bodyMedium: fonts.bodyL.light,
  bodySmall: fonts.bodyL.light,
  labelLarge: fonts.labelL.light,
  labelMedium: fonts.labelM,
  labelSmall: fonts.captionM,
);
