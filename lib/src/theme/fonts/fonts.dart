// ignore_for_file: avoid-equal-expressions, avoid-similar-names, no-magic-number, avoid-long-functions

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

FontResources fontResources(BhaktimartColors colors, BhaktimartFont font) {
  final baseFont = TextStyle(
    color: colors.on.layerPrimary.primary,
    fontWeight: switch (font) {
      BhaktimartFont.polySans => FontWeight.w400,
    },
    fontFamily: font.name,
    fontFamilyFallback: const [
      'NotoColorEmoji', // Emojis.
      'Roboto', // Available on Android.
      '.SF UI Text', // Available on iOS.
      'Segoe UI', // Available on Windows.
      'sans-serif',
    ],
  );

  final displayXXL = baseFont.copyWith(fontSize: 72, height: 72 / 72);
  final displayXL = baseFont.copyWith(fontSize: 64, height: 56 / 64);
  final displayL = baseFont.copyWith(fontSize: 48, height: 52 / 48);
  final displayM = baseFont.copyWith(fontSize: 44, height: 52 / 44);
  final displayS = baseFont.copyWith(fontSize: 40, height: 48 / 40);

  final headlineXL = baseFont.copyWith(fontSize: 36, height: 40 / 36);
  final headlineL = baseFont.copyWith(fontSize: 32, height: 40 / 32);
  final headlineM = baseFont.copyWith(fontSize: 28, height: 36 / 28);
  final headlineS = baseFont.copyWith(fontSize: 24, height: 32 / 24);
  final headlineXS = baseFont.copyWith(fontSize: 20, height: 24 / 20);
  final headlineXXS = baseFont.copyWith(fontSize: 18, height: 20 / 18);

  final labelL = baseFont.copyWith(fontSize: 16, height: 20 / 16);
  final labelM = baseFont.copyWith(fontSize: 14, height: 15 / 14);

  final bodyL = baseFont.copyWith(fontSize: 16, height: 24 / 16);

  final captionM = baseFont.copyWith(fontSize: 12, height: 12 / 12);
  final captionS = baseFont.copyWith(fontSize: 10, height: 12 / 10);

  return FontResources(
    displayXXL: displayXXL,
    displayXL: displayXL,
    displayL: displayL,
    displayM: displayM,
    displayS: displayS,
    headlineXL: headlineXL,
    headlineL: headlineL,
    headlineM: headlineM,
    headlineS: headlineS,
    headlineXS: headlineXS,
    headlineXXS: headlineXXS,
    labelL: labelL,
    labelM: labelM,
    bodyL: bodyL,
    captionM: captionM,
    captionS: captionS,
  );
}
