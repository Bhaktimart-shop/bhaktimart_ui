import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils/custom_knobs.dart';

@UseCase(
  name: 'BhaktimartToggle',
  type: BhaktimartToggle,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3467-2565&t=cK9WO0KlSf1iCS3e-4',
)
Widget bhaktimartToggle(BuildContext context) {
  final isEnabled = boolKnob(context, label: 'Enabled');
  final isActive = boolKnob(context, label: 'Active');

  return Center(
    child: Column(
      spacing: 48,
      mainAxisSize: MainAxisSize.min,
      children: [
        BhaktimartToggle.large(
          onToggle: ({required isOn}) {
            debugPrint('isOn: $isOn');
          },
          isOn: isActive,
          isDisabled: !isEnabled,
        ),
        BhaktimartToggle.small(
          onToggle: ({required isOn}) {
            debugPrint('isOn: $isOn');
          },
          isOn: isActive,
          isDisabled: !isEnabled,
        ),
      ],
    ),
  );
}
