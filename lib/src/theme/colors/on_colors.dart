import 'package:bhaktimart_ui/src/theme/colors/background/on_background_brand.dart';
import 'package:bhaktimart_ui/src/theme/colors/background/on_background_inverted.dart';
import 'package:bhaktimart_ui/src/theme/colors/background/on_background_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/button/on_button.dart';
import 'package:bhaktimart_ui/src/theme/colors/checkbox/on_checkbox.dart';
import 'package:bhaktimart_ui/src/theme/colors/fab/on_fab.dart';
import 'package:bhaktimart_ui/src/theme/colors/input_field/on_input_field.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_secondary.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_tertiary.dart';
import 'package:bhaktimart_ui/src/theme/colors/tag/on_tag.dart';

class OnColors {
  const OnColors({
    required this.backgroundPrimary,
    required this.backgroundInverted,
    required this.backgroundBrand,
    required this.layerPrimary,
    required this.layerSecondary,
    required this.layerTertiary,
    required this.tag,
    required this.fab,
    required this.button,
    required this.inputField,
    required this.checkbox,
  });

  final OnBackgroundPrimary backgroundPrimary;
  final OnBackgroundInverted backgroundInverted;
  final OnBackgroundBrand backgroundBrand;
  final OnLayerPrimary layerPrimary;
  final OnLayerSecondary layerSecondary;
  final OnLayerTertiary layerTertiary;
  final OnTag tag;
  final OnFab fab;
  final OnButton button;
  final OnInputField inputField;
  final OnCheckbox checkbox;

  OnColors copyWith({
    OnBackgroundPrimary? backgroundPrimary,
    OnBackgroundInverted? backgroundInverted,
    OnBackgroundBrand? backgroundBrand,
    OnLayerPrimary? layerPrimary,
    OnLayerSecondary? layerSecondary,
    OnLayerTertiary? layerTertiary,
    OnTag? tag,
    OnFab? fab,
    OnButton? button,
    OnInputField? inputField,
    OnCheckbox? checkbox,
  }) => OnColors(
    backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
    backgroundInverted: backgroundInverted ?? this.backgroundInverted,
    backgroundBrand: backgroundBrand ?? this.backgroundBrand,
    layerPrimary: layerPrimary ?? this.layerPrimary,
    layerSecondary: layerSecondary ?? this.layerSecondary,
    layerTertiary: layerTertiary ?? this.layerTertiary,
    tag: tag ?? this.tag,
    fab: fab ?? this.fab,
    button: button ?? this.button,
    inputField: inputField ?? this.inputField,
    checkbox: checkbox ?? this.checkbox,
  );
}
