import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils/custom_knobs.dart';

@UseCase(
  name: 'Loader',
  type: BhaktimartLoader,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=1394-702',
)
Widget standardLoader(BuildContext context) {
  const defaultDimension = 64.0;

  final dimension = doubleKnob(
    context,
    label: 'Dimension',
    initialValue: defaultDimension,
  );

  final isInverted = boolKnob(context, label: 'Is inverted');

  return Center(
    child: Container(
      color: isInverted ? context.colors.background.inverted : null,
      padding: const EdgeInsets.all(32),
      child: BhaktimartLoader(
        dimension: dimension ?? defaultDimension,
        isInverted: isInverted,
      ),
    ),
  );
}
