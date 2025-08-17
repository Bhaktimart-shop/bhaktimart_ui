import 'package:flutter/material.dart';

class FontResources extends ThemeExtension<FontResources> {
  const FontResources({
    required this.displayXXL,
    required this.displayXL,
    required this.displayL,
    required this.displayM,
    required this.displayS,
    required this.headlineXL,
    required this.headlineL,
    required this.headlineM,
    required this.headlineS,
    required this.headlineXS,
    required this.headlineXXS,
    required this.labelL,
    required this.labelM,
    required this.bodyL,
    required this.captionM,
    required this.captionS,
  });

  // Display.
  final TextStyle displayXXL;
  final TextStyle displayXL;
  final TextStyle displayL;
  final TextStyle displayM;
  final TextStyle displayS;

  // Headline.
  final TextStyle headlineXL;
  final TextStyle headlineL;
  final TextStyle headlineM;
  final TextStyle headlineS;
  final TextStyle headlineXS;
  final TextStyle headlineXXS;

  // Label.
  final TextStyle labelL;
  final TextStyle labelM;

  // Body.
  final TextStyle bodyL;

  // Caption.
  final TextStyle captionM;
  final TextStyle captionS;

  @override
  FontResources copyWith({
    TextStyle? displayXXL,
    TextStyle? displayXL,
    TextStyle? displayL,
    TextStyle? displayM,
    TextStyle? displayS,
    TextStyle? headlineXL,
    TextStyle? headlineL,
    TextStyle? headlineM,
    TextStyle? headlineS,
    TextStyle? headlineXS,
    TextStyle? headlineXXS,
    TextStyle? labelL,
    TextStyle? labelM,
    TextStyle? bodyL,
    TextStyle? captionM,
    TextStyle? captionS,
  }) => FontResources(
    displayXXL: displayXXL ?? this.displayXXL,
    displayXL: displayXL ?? this.displayXL,
    displayL: displayL ?? this.displayL,
    displayM: displayM ?? this.displayM,
    displayS: displayS ?? this.displayS,
    headlineXL: headlineXL ?? this.headlineXL,
    headlineL: headlineL ?? this.headlineL,
    headlineM: headlineM ?? this.headlineM,
    headlineS: headlineS ?? this.headlineS,
    headlineXS: headlineXS ?? this.headlineXS,
    headlineXXS: headlineXXS ?? this.headlineXXS,
    labelL: labelL ?? this.labelL,
    labelM: labelM ?? this.labelM,
    bodyL: bodyL ?? this.bodyL,
    captionM: captionM ?? this.captionM,
    captionS: captionS ?? this.captionS,
  );

  @override
  FontResources lerp(FontResources? other, double t) => other is FontResources
      ? FontResources(
          displayXXL: TextStyle.lerp(displayXXL, other.displayXXL, t)!,
          displayXL: TextStyle.lerp(displayXL, other.displayXL, t)!,
          displayL: TextStyle.lerp(displayL, other.displayL, t)!,
          displayM: TextStyle.lerp(displayM, other.displayM, t)!,
          displayS: TextStyle.lerp(displayS, other.displayS, t)!,
          headlineXL: TextStyle.lerp(headlineXL, other.headlineXL, t)!,
          headlineL: TextStyle.lerp(headlineL, other.headlineL, t)!,
          headlineM: TextStyle.lerp(headlineM, other.headlineM, t)!,
          headlineS: TextStyle.lerp(headlineS, other.headlineS, t)!,
          headlineXS: TextStyle.lerp(headlineXS, other.headlineXS, t)!,
          headlineXXS: TextStyle.lerp(headlineXXS, other.headlineXXS, t)!,
          labelL: TextStyle.lerp(labelL, other.labelL, t)!,
          labelM: TextStyle.lerp(labelM, other.labelM, t)!,
          bodyL: TextStyle.lerp(bodyL, other.bodyL, t)!,
          captionM: TextStyle.lerp(captionM, other.captionM, t)!,
          captionS: TextStyle.lerp(captionS, other.captionS, t)!,
        )
      : this;
}

extension FontWeights on TextStyle {
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}

extension FontResourcesExtension on ThemeData {
  FontResources get fontResources => extension<FontResources>()!;
}
