import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

int? intKnob(
  BuildContext context, {
  required String label,
  int initialValue = 100,
  bool isSlider = false,
}) => isSlider
    ? context.knobs.intOrNull.slider(label: label, initialValue: initialValue)
    : context.knobs.intOrNull.input(label: label, initialValue: initialValue);

double? doubleKnob(
  BuildContext context, {
  required String label,
  double? initialValue,
  bool isSlider = false,
}) => isSlider
    ? context.knobs.doubleOrNull.slider(
        label: label,
        initialValue: initialValue,
      )
    : context.knobs.doubleOrNull.input(
        label: label,
        initialValue: initialValue,
      );

String stringKnob(
  BuildContext context, {
  required String label,
  String initialValue = 'Label',
}) => context.knobs.string(label: label, initialValue: initialValue);

Color colorKnob(
  BuildContext context, {
  required String label,
  Color initialValue = Colors.black,
}) => context.knobs.color(label: label, initialValue: initialValue);

// Fine for knobs to not have boolean prefixes.
// ignore: prefer-boolean-prefixes
bool boolKnob(
  BuildContext context, {
  required String label,
  // Fine for knobs to not have boolean prefixes.
  // ignore: prefer-boolean-prefixes
  bool initialValue = false,
}) => context.knobs.boolean(label: label, initialValue: initialValue);
