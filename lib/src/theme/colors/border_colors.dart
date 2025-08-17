import 'package:bhaktimart_ui/src/theme/colors/border/border_checkbox.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_input_field.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_secondary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_tertiary.dart';

class BorderColors {
  const BorderColors({
    required this.inputField,
    required this.layerPrimary,
    required this.layerSecondary,
    required this.layerTertiary,
    required this.checkbox,
  });

  final BorderInputField inputField;
  final BorderLayerPrimary layerPrimary;
  final BorderLayerSecondary layerSecondary;
  final BorderLayerTertiary layerTertiary;
  final BorderCheckbox checkbox;

  BorderColors copyWith({
    BorderInputField? inputField,
    BorderLayerPrimary? layerPrimary,
    BorderLayerSecondary? layerSecondary,
    BorderLayerTertiary? layerTertiary,
    BorderCheckbox? checkbox,
  }) => BorderColors(
    inputField: inputField ?? this.inputField,
    layerPrimary: layerPrimary ?? this.layerPrimary,
    layerSecondary: layerSecondary ?? this.layerSecondary,
    layerTertiary: layerTertiary ?? this.layerTertiary,
    checkbox: checkbox ?? this.checkbox,
  );
}
