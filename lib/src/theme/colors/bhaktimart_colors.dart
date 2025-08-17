// ignore_for_file: no-magic-number

import 'package:bhaktimart_ui/src/theme/colors/background/background.dart';
import 'package:bhaktimart_ui/src/theme/colors/background/on_background_brand.dart';
import 'package:bhaktimart_ui/src/theme/colors/background/on_background_inverted.dart';
import 'package:bhaktimart_ui/src/theme/colors/background/on_background_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_checkbox.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_input_field.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_secondary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border/border_layer_tertiary.dart';
import 'package:bhaktimart_ui/src/theme/colors/border_colors.dart';
import 'package:bhaktimart_ui/src/theme/colors/button/button.dart';
import 'package:bhaktimart_ui/src/theme/colors/button/ghost_button.dart';
import 'package:bhaktimart_ui/src/theme/colors/button/on_button.dart';
import 'package:bhaktimart_ui/src/theme/colors/checkbox/checkbox.dart';
import 'package:bhaktimart_ui/src/theme/colors/checkbox/on_checkbox.dart';
import 'package:bhaktimart_ui/src/theme/colors/color_tuple.dart';
import 'package:bhaktimart_ui/src/theme/colors/fab/fab.dart';
import 'package:bhaktimart_ui/src/theme/colors/fab/on_fab.dart';
import 'package:bhaktimart_ui/src/theme/colors/input_field/input_field.dart';
import 'package:bhaktimart_ui/src/theme/colors/input_field/on_input_field.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/layer.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_primary.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_secondary.dart';
import 'package:bhaktimart_ui/src/theme/colors/layer/on_layer_tertiary.dart';
import 'package:bhaktimart_ui/src/theme/colors/on_colors.dart';
import 'package:bhaktimart_ui/src/theme/colors/overlay/overlay.dart';
import 'package:bhaktimart_ui/src/theme/colors/primitives.dart';
import 'package:bhaktimart_ui/src/theme/colors/tag/on_tag.dart';
import 'package:bhaktimart_ui/src/theme/colors/tag/tag.dart';
import 'package:flutter/material.dart' hide Checkbox, Overlay;

class BhaktimartColors extends ThemeExtension<BhaktimartColors> {
  const BhaktimartColors({
    required this.on,
    required this.border,
    required this.background,
    required this.layer,
    required this.tag,
    required this.fab,
    required this.overlay,
    required this.button,
    required this.ghostButton,
    required this.inputField,
    required this.checkbox,
  });

  factory BhaktimartColors.fromPrimitives(Primitives primitives) =>
      BhaktimartColors(
        on: OnColors(
          backgroundPrimary: OnBackgroundPrimary(
            primary: primitives.neutrals10,
            secondary: primitives.neutrals40,
            tertiary: primitives.neutrals60,
            shade: primitives.neutrals90,
            brand: primitives.brand60,
            alert: primitives.alert60,
            warning: primitives.warning60,
            confirmation: primitives.confirmation60,
          ),
          backgroundInverted: OnBackgroundInverted(
            primary: primitives.neutrals100,
            secondary: primitives.neutrals60,
            tertiary: primitives.neutrals40,
            shade: primitives.neutrals20,
            brand: primitives.brand70,
            brandA: primitives.brand60,
            brandB: primitives.brand90,
          ),
          backgroundBrand: OnBackgroundBrand(primary: primitives.neutrals100),
          layerPrimary: OnLayerPrimary(
            primary: primitives.neutrals10,
            secondary: primitives.neutrals40,
            tertiary: primitives.neutrals60,
            shade: primitives.neutrals90,
            brand: primitives.brand60,
            alert: primitives.alert60,
            warning: primitives.warning60,
            confirmation: primitives.confirmation60,
          ),
          layerSecondary: OnLayerSecondary(
            primary: primitives.neutrals10,
            secondary: primitives.neutrals40,
            tertiary: primitives.neutrals60,
          ),
          layerTertiary: OnLayerTertiary(
            primary: primitives.neutrals10,
            secondary: primitives.neutrals40,
            brand: primitives.brand60,
          ),
          tag: OnTag(
            brand: primitives.neutrals100,
            brandA: primitives.brand60,
            brandB: ColorTuple(
              primary: primitives.neutrals10,
              secondary: primitives.neutrals40,
            ),
            neutral: primitives.neutrals100,
            neutralA: primitives.neutrals100,
            neutralB: primitives.neutrals40,
            neutralC: ColorTuple(
              primary: primitives.neutrals10,
              secondary: primitives.neutrals90,
            ),
            alert: primitives.neutrals100,
            alertA: primitives.alert60,
            warning: primitives.neutrals100,
            confirmation: primitives.neutrals100,
            confirmationA: primitives.confirmation60,
            confirmationB: primitives.neutrals100,
            active: primitives.confirmation50,
            modified: primitives.warning50,
          ),
          fab: OnFab(
            primary: primitives.neutrals100,
            primaryDisabled: primitives.neutrals90,
            secondary: primitives.neutrals100,
            secondaryDisabled: primitives.neutrals60,
            secondaryBrand: primitives.neutrals100,
            secondaryBrandDisabled: primitives.neutrals100,
          ),
          button: OnButton(
            primary: primitives.neutrals100,
            primaryDisabled: primitives.neutrals100,
            secondary: primitives.neutrals10,
            secondaryDisabled: primitives.neutrals10,
            brand: primitives.neutrals100,
            brandDisabled: primitives.neutrals100,
            destructive: primitives.alert60,
            destructiveDisabled: primitives.alert60,
            filter: primitives.neutrals10,
            inverted: primitives.neutrals100,
            invertedDisabled: primitives.neutrals30,
          ),
          inputField: OnInputField(
            standard: primitives.neutrals60,
            inactive: primitives.neutrals60,
            filled: primitives.neutrals10,
            alert: primitives.alert60,
          ),
          checkbox: OnCheckbox(
            activeConfirmation: primitives.confirmation60,
            activeBrand: primitives.brand60,
            inactive: primitives.neutrals70,
          ),
        ),
        border: BorderColors(
          inputField: BorderInputField(
            standard: primitives.neutrals60,
            selected: primitives.neutrals10,
            alert: primitives.alert60,
          ),
          layerPrimary: BorderLayerPrimary(
            primary: primitives.neutrals60,
            secondary: primitives.neutrals90,
          ),
          layerSecondary: BorderLayerSecondary(primary: primitives.neutrals90),
          layerTertiary: BorderLayerTertiary(primary: primitives.brand90),
          checkbox: BorderCheckbox(
            activeConfirmation: primitives.confirmation60,
            activeBrand: primitives.brand60,
            inactiveConfirmation: primitives.neutrals70,
            inactiveBrand: primitives.neutrals70,
          ),
        ),
        background: Background(
          primary: primitives.neutrals99,
          brand: primitives.brand60,
          inverted: primitives.neutrals10,
        ),
        layer: Layer(
          primary: primitives.neutrals100,
          secondary: primitives.neutrals99,
          tertiary: primitives.brand99,
        ),
        tag: Tag(
          brand: primitives.brand60,
          brandA: primitives.brand90,
          brandB: primitives.brand99,
          neutral: primitives.neutrals60,
          neutralA: primitives.neutrals40,
          neutralB: primitives.neutrals90,
          neutralC: primitives.neutrals100,
          neutralD: primitives.neutrals30,
          alert: primitives.alert60,
          alertA: primitives.alert90,
          warning: primitives.warning60,
          confirmation: primitives.confirmation60,
          confirmationA: primitives.confirmation90,
          confirmationB: primitives.confirmation50,
          active: primitives.confirmation70,
          modified: primitives.warning90,
        ),
        fab: Fab(
          primary: primitives.neutrals10,
          primaryOnHover: primitives.neutrals20,
          primaryOnClick: primitives.neutrals30,
          primaryDisabled: primitives.neutrals70,
          secondary: primitives.neutrals10.withValues(alpha: 0.5),
          secondaryOnHover: primitives.neutrals10.withValues(alpha: 0.7),
          secondaryOnClick: primitives.neutrals10.withValues(alpha: 0.9),
          secondaryDisabled: primitives.neutrals10.withValues(alpha: 0.2),
          secondaryBrand: primitives.brand60,
          secondaryBrandOnHover: primitives.brand50,
          secondaryBrandOnClick: primitives.brand60,
          secondaryBrandDisabled: primitives.brand90,
        ),
        overlay: Overlay(
          primary: primitives.neutrals10.withValues(alpha: 0.7),
          secondary: primitives.neutrals99.withValues(alpha: 0.95),
        ),
        button: Button(
          primary: primitives.neutrals10,
          primaryOnHover: primitives.neutrals20,
          primaryOnClick: primitives.neutrals30,
          primaryLoading: primitives.neutrals30,
          primaryDisabled: primitives.neutrals70,
          secondary: primitives.neutrals100,
          secondaryOnHover: primitives.neutrals90,
          secondaryOnClick: primitives.neutrals100,
          secondaryLoading: primitives.neutrals100,
          secondaryDisabled: primitives.neutrals99,
          brand: primitives.brand60,
          brandOnHover: primitives.brand50,
          brandOnClick: primitives.brand70,
          brandLoading: primitives.brand70,
          brandDisabled: primitives.brand90,
          destructive: primitives.neutrals100,
          destructiveOnHover: primitives.alert90,
          destructiveOnClick: primitives.neutrals100,
          destructiveLoading: primitives.neutrals100,
          destructiveDisabled: primitives.neutrals100,
          filter: primitives.neutrals100,
          filterSelected: primitives.neutrals90,
          invertedOnHover: primitives.neutrals20,
        ),
        ghostButton: GhostButton(
          primary: primitives.neutrals30,
          primaryOnHover: primitives.neutrals10,
          primaryOnClick: primitives.neutrals30,
          primaryDisabled: primitives.neutrals70,
          brand: primitives.brand60,
          brandOnHover: primitives.brand50,
          brandOnClick: primitives.brand70,
          brandDisabled: primitives.neutrals70,
          destructive: primitives.alert60,
          destructiveOnHover: primitives.alert60,
          destructiveOnClick: primitives.alert60,
          destructiveDisabled: primitives.neutrals70,
          icon: primitives.neutrals30,
          iconOnHover: primitives.neutrals10,
          iconOnClick: primitives.neutrals10,
          iconDisabled: primitives.neutrals60,
          iconInverted: primitives.neutrals100,
          iconInvertedOnHover: primitives.neutrals70,
          iconInvertedOnClick: primitives.neutrals90,
          iconInvertedDisabled: primitives.neutrals30,
        ),
        inputField: InputField(
          active: primitives.neutrals100,
          inactive: primitives.neutrals90,
        ),
        checkbox: Checkbox(
          activeConfirmation: primitives.confirmation90,
          activeBrand: primitives.brand90,
          inactiveConfirmation: primitives.neutrals90,
          inactiveBrand: primitives.neutrals90,
        ),
      );

  // We want it short in this case.
  // ignore: prefer-correct-identifier-length
  final OnColors on;
  final BorderColors border;
  final Background background;
  final Layer layer;
  final Tag tag;
  final Fab fab;
  final Overlay overlay;
  final Button button;
  final GhostButton ghostButton;
  final InputField inputField;
  final Checkbox checkbox;

  @override
  BhaktimartColors copyWith({
    OnColors? on,
    BorderColors? border,
    Background? background,
    Layer? layer,
    Tag? tag,
    Fab? fab,
    Overlay? overlay,
    Button? button,
    GhostButton? ghostButton,
    InputField? inputField,
    Checkbox? checkbox,
  }) => BhaktimartColors(
    on: OnColors(
      backgroundPrimary:
          on?.backgroundPrimary.copyWith() ?? this.on.backgroundPrimary,
      backgroundInverted:
          on?.backgroundInverted.copyWith() ?? this.on.backgroundInverted,
      backgroundBrand:
          on?.backgroundBrand.copyWith() ?? this.on.backgroundBrand,
      layerPrimary: on?.layerPrimary.copyWith() ?? this.on.layerPrimary,
      layerSecondary: on?.layerSecondary.copyWith() ?? this.on.layerSecondary,
      layerTertiary: on?.layerTertiary.copyWith() ?? this.on.layerTertiary,
      tag: on?.tag.copyWith() ?? this.on.tag,
      fab: on?.fab.copyWith() ?? this.on.fab,
      button: on?.button.copyWith() ?? this.on.button,
      inputField: on?.inputField.copyWith() ?? this.on.inputField,
      checkbox: on?.checkbox.copyWith() ?? this.on.checkbox,
    ),
    border: BorderColors(
      inputField: border?.inputField.copyWith() ?? this.border.inputField,
      layerPrimary: border?.layerPrimary.copyWith() ?? this.border.layerPrimary,
      layerSecondary:
          border?.layerSecondary.copyWith() ?? this.border.layerSecondary,
      layerTertiary:
          border?.layerTertiary.copyWith() ?? this.border.layerTertiary,
      checkbox: border?.checkbox.copyWith() ?? this.border.checkbox,
    ),
    background: Background(
      primary: background?.primary ?? this.background.primary,
      brand: background?.brand ?? this.background.brand,
      inverted: background?.inverted ?? this.background.inverted,
    ),
    layer: Layer(
      primary: layer?.primary ?? this.layer.primary,
      secondary: layer?.secondary ?? this.layer.secondary,
      tertiary: layer?.tertiary ?? this.layer.tertiary,
    ),
    tag: Tag(
      brand: tag?.brand ?? this.tag.brand,
      brandA: tag?.brandA ?? this.tag.brandA,
      brandB: tag?.brandB ?? this.tag.brandB,
      neutral: tag?.neutral ?? this.tag.neutral,
      neutralA: tag?.neutralA ?? this.tag.neutralA,
      neutralB: tag?.neutralB ?? this.tag.neutralB,
      neutralC: tag?.neutralC ?? this.tag.neutralC,
      neutralD: tag?.neutralD ?? this.tag.neutralD,
      alert: tag?.alert ?? this.tag.alert,
      alertA: tag?.alertA ?? this.tag.alertA,
      warning: tag?.warning ?? this.tag.warning,
      confirmation: tag?.confirmation ?? this.tag.confirmation,
      confirmationA: tag?.confirmationA ?? this.tag.confirmationA,
      confirmationB: tag?.confirmationB ?? this.tag.confirmationB,
      active: tag?.active ?? this.tag.active,
      modified: tag?.modified ?? this.tag.modified,
    ),
    fab: Fab(
      primary: fab?.primary ?? this.fab.primary,
      primaryOnHover: fab?.primaryOnHover ?? this.fab.primaryOnHover,
      primaryOnClick: fab?.primaryOnClick ?? this.fab.primaryOnClick,
      primaryDisabled: fab?.primaryDisabled ?? this.fab.primaryDisabled,
      secondary: fab?.secondary ?? this.fab.secondary,
      secondaryOnHover: fab?.secondaryOnHover ?? this.fab.secondaryOnHover,
      secondaryOnClick: fab?.secondaryOnClick ?? this.fab.secondaryOnClick,
      secondaryDisabled: fab?.secondaryDisabled ?? this.fab.secondaryDisabled,
      secondaryBrand: fab?.secondaryBrand ?? this.fab.secondaryBrand,
      secondaryBrandOnHover:
          fab?.secondaryBrandOnHover ?? this.fab.secondaryBrandOnHover,
      secondaryBrandOnClick:
          fab?.secondaryBrandOnClick ?? this.fab.secondaryBrandOnClick,
      secondaryBrandDisabled:
          fab?.secondaryBrandDisabled ?? this.fab.secondaryBrandDisabled,
    ),
    overlay: Overlay(
      primary: overlay?.primary ?? this.overlay.primary,
      secondary: overlay?.secondary ?? this.overlay.secondary,
    ),
    button: Button(
      primary: button?.primary ?? this.button.primary,
      primaryOnHover: button?.primaryOnHover ?? this.button.primaryOnHover,
      primaryOnClick: button?.primaryOnClick ?? this.button.primaryOnClick,
      primaryLoading: button?.primaryLoading ?? this.button.primaryLoading,
      primaryDisabled: button?.primaryDisabled ?? this.button.primaryDisabled,
      secondary: button?.secondary ?? this.button.secondary,
      secondaryOnHover:
          button?.secondaryOnHover ?? this.button.secondaryOnHover,
      secondaryOnClick:
          button?.secondaryOnClick ?? this.button.secondaryOnClick,
      secondaryLoading:
          button?.secondaryLoading ?? this.button.secondaryLoading,
      secondaryDisabled:
          button?.secondaryDisabled ?? this.button.secondaryDisabled,
      brand: button?.brand ?? this.button.brand,
      brandOnHover: button?.brandOnHover ?? this.button.brandOnHover,
      brandOnClick: button?.brandOnClick ?? this.button.brandOnClick,
      brandLoading: button?.brandLoading ?? this.button.brandLoading,
      brandDisabled: button?.brandDisabled ?? this.button.brandDisabled,
      destructive: button?.destructive ?? this.button.destructive,
      destructiveOnHover:
          button?.destructiveOnHover ?? this.button.destructiveOnHover,
      destructiveOnClick:
          button?.destructiveOnClick ?? this.button.destructiveOnClick,
      destructiveLoading:
          button?.destructiveLoading ?? this.button.destructiveLoading,
      destructiveDisabled:
          button?.destructiveDisabled ?? this.button.destructiveDisabled,
      filter: button?.filter ?? this.button.filter,
      filterSelected: button?.filterSelected ?? this.button.filterSelected,
      invertedOnHover: button?.invertedOnHover ?? this.button.invertedOnHover,
    ),
    ghostButton: GhostButton(
      primary: ghostButton?.primary ?? this.ghostButton.primary,
      primaryOnHover:
          ghostButton?.primaryOnHover ?? this.ghostButton.primaryOnHover,
      primaryOnClick:
          ghostButton?.primaryOnClick ?? this.ghostButton.primaryOnClick,
      primaryDisabled:
          ghostButton?.primaryDisabled ?? this.ghostButton.primaryDisabled,
      brand: ghostButton?.brand ?? this.ghostButton.brand,
      brandOnHover: ghostButton?.brandOnHover ?? this.ghostButton.brandOnHover,
      brandOnClick: ghostButton?.brandOnClick ?? this.ghostButton.brandOnClick,
      brandDisabled:
          ghostButton?.brandDisabled ?? this.ghostButton.brandDisabled,
      destructive: ghostButton?.destructive ?? this.ghostButton.destructive,
      destructiveOnHover:
          ghostButton?.destructiveOnHover ??
          this.ghostButton.destructiveOnHover,
      destructiveOnClick:
          ghostButton?.destructiveOnClick ??
          this.ghostButton.destructiveOnClick,
      destructiveDisabled:
          ghostButton?.destructiveDisabled ??
          this.ghostButton.destructiveDisabled,
      icon: ghostButton?.icon ?? this.ghostButton.icon,
      iconOnHover: ghostButton?.iconOnHover ?? this.ghostButton.iconOnHover,
      iconOnClick: ghostButton?.iconOnClick ?? this.ghostButton.iconOnClick,
      iconDisabled: ghostButton?.iconDisabled ?? this.ghostButton.iconDisabled,
      iconInverted: ghostButton?.iconInverted ?? this.ghostButton.iconInverted,
      iconInvertedOnHover:
          ghostButton?.iconInvertedOnHover ??
          this.ghostButton.iconInvertedOnHover,
      iconInvertedOnClick:
          ghostButton?.iconInvertedOnClick ??
          this.ghostButton.iconInvertedOnClick,
      iconInvertedDisabled:
          ghostButton?.iconInvertedDisabled ??
          this.ghostButton.iconInvertedDisabled,
    ),
    inputField: InputField(
      active: inputField?.active ?? this.inputField.active,
      inactive: inputField?.inactive ?? this.inputField.inactive,
    ),
    checkbox: Checkbox(
      activeConfirmation:
          checkbox?.activeConfirmation ?? this.checkbox.activeConfirmation,
      activeBrand: checkbox?.activeBrand ?? this.checkbox.activeBrand,
      inactiveConfirmation:
          checkbox?.inactiveConfirmation ?? this.checkbox.inactiveConfirmation,
      inactiveBrand: checkbox?.inactiveBrand ?? this.checkbox.inactiveBrand,
    ),
  );

  @override
  BhaktimartColors lerp(BhaktimartColors? other, double t) => other == null
      ? this
      : BhaktimartColors(
          on: OnColors(
            backgroundPrimary: on.backgroundPrimary.lerp(
              other.on.backgroundPrimary,
              t,
            ),
            backgroundInverted: on.backgroundInverted.lerp(
              other.on.backgroundInverted,
              t,
            ),
            backgroundBrand: on.backgroundBrand.lerp(
              other.on.backgroundBrand,
              t,
            ),
            layerPrimary: on.layerPrimary.lerp(other.on.layerPrimary, t),
            layerSecondary: on.layerSecondary.lerp(other.on.layerSecondary, t),
            layerTertiary: on.layerTertiary.lerp(other.on.layerTertiary, t),
            tag: on.tag.lerp(other.on.tag, t),
            fab: on.fab.lerp(other.on.fab, t),
            button: on.button.lerp(other.on.button, t),
            inputField: on.inputField.lerp(other.on.inputField, t),
            checkbox: on.checkbox.lerp(other.on.checkbox, t),
          ),
          border: BorderColors(
            inputField: border.inputField.lerp(other.border.inputField, t),
            layerPrimary: border.layerPrimary.lerp(
              other.border.layerPrimary,
              t,
            ),
            layerSecondary: border.layerSecondary.lerp(
              other.border.layerSecondary,
              t,
            ),
            layerTertiary: border.layerTertiary.lerp(
              other.border.layerTertiary,
              t,
            ),
            checkbox: border.checkbox.lerp(other.border.checkbox, t),
          ),
          background: Background(
            primary: Color.lerp(
              background.primary,
              other.background.primary,
              t,
            )!,
            brand: Color.lerp(background.brand, other.background.brand, t)!,
            inverted: Color.lerp(
              background.inverted,
              other.background.inverted,
              t,
            )!,
          ),
          layer: Layer(
            primary: Color.lerp(layer.primary, other.layer.primary, t)!,
            secondary: Color.lerp(layer.secondary, other.layer.secondary, t)!,
            tertiary: Color.lerp(layer.tertiary, other.layer.tertiary, t)!,
          ),
          tag: Tag(
            brand: Color.lerp(tag.brand, other.tag.brand, t)!,
            brandA: Color.lerp(tag.brandA, other.tag.brandA, t)!,
            brandB: Color.lerp(tag.brandB, other.tag.brandB, t)!,
            neutral: Color.lerp(tag.neutral, other.tag.neutral, t)!,
            neutralA: Color.lerp(tag.neutralA, other.tag.neutralA, t)!,
            neutralB: Color.lerp(tag.neutralB, other.tag.neutralB, t)!,
            neutralC: Color.lerp(tag.neutralC, other.tag.neutralC, t)!,
            neutralD: Color.lerp(tag.neutralD, other.tag.neutralD, t)!,
            alert: Color.lerp(tag.alert, other.tag.alert, t)!,
            alertA: Color.lerp(tag.alertA, other.tag.alertA, t)!,
            warning: Color.lerp(tag.warning, other.tag.warning, t)!,
            confirmation: Color.lerp(
              tag.confirmation,
              other.tag.confirmation,
              t,
            )!,
            confirmationA: Color.lerp(
              tag.confirmationA,
              other.tag.confirmationA,
              t,
            )!,
            confirmationB: Color.lerp(
              tag.confirmationB,
              other.tag.confirmationB,
              t,
            )!,
            active: Color.lerp(tag.active, other.tag.active, t)!,
            modified: Color.lerp(tag.modified, other.tag.modified, t)!,
          ),
          fab: Fab(
            primary: Color.lerp(fab.primary, other.fab.primary, t)!,
            primaryOnHover: Color.lerp(
              fab.primaryOnHover,
              other.fab.primaryOnHover,
              t,
            )!,
            primaryOnClick: Color.lerp(
              fab.primaryOnClick,
              other.fab.primaryOnClick,
              t,
            )!,
            primaryDisabled: Color.lerp(
              fab.primaryDisabled,
              other.fab.primaryDisabled,
              t,
            )!,
            secondary: Color.lerp(fab.secondary, other.fab.secondary, t)!,
            secondaryOnHover: Color.lerp(
              fab.secondaryOnHover,
              other.fab.secondaryOnHover,
              t,
            )!,
            secondaryOnClick: Color.lerp(
              fab.secondaryOnClick,
              other.fab.secondaryOnClick,
              t,
            )!,
            secondaryDisabled: Color.lerp(
              fab.secondaryDisabled,
              other.fab.secondaryDisabled,
              t,
            )!,
            secondaryBrand: Color.lerp(
              fab.secondaryBrand,
              other.fab.secondaryBrand,
              t,
            )!,
            secondaryBrandOnHover: Color.lerp(
              fab.secondaryBrandOnHover,
              other.fab.secondaryBrandOnHover,
              t,
            )!,
            secondaryBrandOnClick: Color.lerp(
              fab.secondaryBrandOnClick,
              other.fab.secondaryBrandOnClick,
              t,
            )!,
            secondaryBrandDisabled: Color.lerp(
              fab.secondaryBrandDisabled,
              other.fab.secondaryBrandDisabled,
              t,
            )!,
          ),
          overlay: Overlay(
            primary: Color.lerp(overlay.primary, other.overlay.primary, t)!,
            secondary: Color.lerp(
              overlay.secondary,
              other.overlay.secondary,
              t,
            )!,
          ),
          button: Button(
            primary: Color.lerp(button.primary, other.button.primary, t)!,
            primaryOnHover: Color.lerp(
              button.primaryOnHover,
              other.button.primaryOnHover,
              t,
            )!,
            primaryOnClick: Color.lerp(
              button.primaryOnClick,
              other.button.primaryOnClick,
              t,
            )!,
            primaryLoading: Color.lerp(
              button.primaryLoading,
              other.button.primaryLoading,
              t,
            )!,
            primaryDisabled: Color.lerp(
              button.primaryDisabled,
              other.button.primaryDisabled,
              t,
            )!,
            secondary: Color.lerp(button.secondary, other.button.secondary, t)!,
            secondaryOnHover: Color.lerp(
              button.secondaryOnHover,
              other.button.secondaryOnHover,
              t,
            )!,
            secondaryOnClick: Color.lerp(
              button.secondaryOnClick,
              other.button.secondaryOnClick,
              t,
            )!,
            secondaryLoading: Color.lerp(
              button.secondaryLoading,
              other.button.secondaryLoading,
              t,
            )!,
            secondaryDisabled: Color.lerp(
              button.secondaryDisabled,
              other.button.secondaryDisabled,
              t,
            )!,
            brand: Color.lerp(button.brand, other.button.brand, t)!,
            brandOnHover: Color.lerp(
              button.brandOnHover,
              other.button.brandOnHover,
              t,
            )!,
            brandOnClick: Color.lerp(
              button.brandOnClick,
              other.button.brandOnClick,
              t,
            )!,
            brandLoading: Color.lerp(
              button.brandLoading,
              other.button.brandLoading,
              t,
            )!,
            brandDisabled: Color.lerp(
              button.brandDisabled,
              other.button.brandDisabled,
              t,
            )!,
            destructive: Color.lerp(
              button.destructive,
              other.button.destructive,
              t,
            )!,
            destructiveOnHover: Color.lerp(
              button.destructiveOnHover,
              other.button.destructiveOnHover,
              t,
            )!,
            destructiveOnClick: Color.lerp(
              button.destructiveOnClick,
              other.button.destructiveOnClick,
              t,
            )!,
            destructiveLoading: Color.lerp(
              button.destructiveLoading,
              other.button.destructiveLoading,
              t,
            )!,
            destructiveDisabled: Color.lerp(
              button.destructiveDisabled,
              other.button.destructiveDisabled,
              t,
            )!,
            filter: Color.lerp(button.filter, other.button.filter, t)!,
            filterSelected: Color.lerp(
              button.filterSelected,
              other.button.filterSelected,
              t,
            )!,
            invertedOnHover: Color.lerp(
              button.invertedOnHover,
              other.button.invertedOnHover,
              t,
            )!,
          ),
          ghostButton: GhostButton(
            primary: Color.lerp(
              ghostButton.primary,
              other.ghostButton.primary,
              t,
            )!,
            primaryOnHover: Color.lerp(
              ghostButton.primaryOnHover,
              other.ghostButton.primaryOnHover,
              t,
            )!,
            primaryOnClick: Color.lerp(
              ghostButton.primaryOnClick,
              other.ghostButton.primaryOnClick,
              t,
            )!,
            primaryDisabled: Color.lerp(
              ghostButton.primaryDisabled,
              other.ghostButton.primaryDisabled,
              t,
            )!,
            brand: Color.lerp(ghostButton.brand, other.ghostButton.brand, t)!,
            brandOnHover: Color.lerp(
              ghostButton.brandOnHover,
              other.ghostButton.brandOnHover,
              t,
            )!,
            brandOnClick: Color.lerp(
              ghostButton.brandOnClick,
              other.ghostButton.brandOnClick,
              t,
            )!,
            brandDisabled: Color.lerp(
              ghostButton.brandDisabled,
              other.ghostButton.brandDisabled,
              t,
            )!,
            destructive: Color.lerp(
              ghostButton.destructive,
              other.ghostButton.destructive,
              t,
            )!,
            destructiveOnHover: Color.lerp(
              ghostButton.destructiveOnHover,
              other.ghostButton.destructiveOnHover,
              t,
            )!,
            destructiveOnClick: Color.lerp(
              ghostButton.destructiveOnClick,
              other.ghostButton.destructiveOnClick,
              t,
            )!,
            destructiveDisabled: Color.lerp(
              ghostButton.destructiveDisabled,
              other.ghostButton.destructiveDisabled,
              t,
            )!,
            icon: Color.lerp(ghostButton.icon, other.ghostButton.icon, t)!,
            iconOnHover: Color.lerp(
              ghostButton.iconOnHover,
              other.ghostButton.iconOnHover,
              t,
            )!,
            iconOnClick: Color.lerp(
              ghostButton.iconOnClick,
              other.ghostButton.iconOnClick,
              t,
            )!,
            iconDisabled: Color.lerp(
              ghostButton.iconDisabled,
              other.ghostButton.iconDisabled,
              t,
            )!,
            iconInverted: Color.lerp(
              ghostButton.iconInverted,
              other.ghostButton.iconInverted,
              t,
            )!,
            iconInvertedOnHover: Color.lerp(
              ghostButton.iconInvertedOnHover,
              other.ghostButton.iconInvertedOnHover,
              t,
            )!,
            iconInvertedOnClick: Color.lerp(
              ghostButton.iconInvertedOnClick,
              other.ghostButton.iconInvertedOnClick,
              t,
            )!,
            iconInvertedDisabled: Color.lerp(
              ghostButton.iconInvertedDisabled,
              other.ghostButton.iconInvertedDisabled,
              t,
            )!,
          ),
          inputField: InputField(
            active: Color.lerp(inputField.active, other.inputField.active, t)!,
            inactive: Color.lerp(
              inputField.inactive,
              other.inputField.inactive,
              t,
            )!,
          ),
          checkbox: Checkbox(
            activeConfirmation: Color.lerp(
              checkbox.activeConfirmation,
              other.checkbox.activeConfirmation,
              t,
            )!,
            activeBrand: Color.lerp(
              checkbox.activeBrand,
              other.checkbox.activeBrand,
              t,
            )!,
            inactiveConfirmation: Color.lerp(
              checkbox.inactiveConfirmation,
              other.checkbox.inactiveConfirmation,
              t,
            )!,
            inactiveBrand: Color.lerp(
              checkbox.inactiveBrand,
              other.checkbox.inactiveBrand,
              t,
            )!,
          ),
        );
}

extension BhaktimartColorsResourceExtension on ThemeData {
  BhaktimartColors get bhaktimartColorsResources =>
      extension<BhaktimartColors>()!;
}
