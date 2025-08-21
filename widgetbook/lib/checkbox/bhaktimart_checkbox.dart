// ignore_for_file: prefer-match-file-name

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils/custom_knobs.dart';

const _labelWidth = 200.0;

@UseCase(
  name: 'All Variants',
  type: BhaktimartCheckbox,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=0-272&t=cK9WO0KlSf1iCS3e-4',
)
Widget allVariantsCheckbox(BuildContext context) {
  final isEnabled = boolKnob(context, label: 'Enabled', initialValue: true);
  final isActive = boolKnob(context, label: 'Active');

  final headlineS = context.fonts.headlineS;

  return Column(
    spacing: context.dimensions.spacingM2,
    children: [
      Text('Small', style: headlineS),
      _CheckboxVariantGroup(
        size: BhaktimartCheckboxSize.small,
        isActive: isActive,
        isDisabled: !isEnabled,
      ),

      BhaktimartGap.m1(),

      Text('Large', style: headlineS),
      _CheckboxVariantGroup(
        size: BhaktimartCheckboxSize.large,
        isActive: isActive,
        isDisabled: !isEnabled,
      ),
    ],
  );
}

@UseCase(name: 'Interactive', type: BhaktimartCheckbox)
Widget interactiveCheckbox(BuildContext context) {
  final isEnabled = boolKnob(context, label: 'Enabled', initialValue: true);
  return _InteractiveCheckboxDemo(
    key: const Key('interactive_demo'),
    isEnabled: isEnabled,
  );
}

class _CheckboxVariantGroup extends StatelessWidget {
  const _CheckboxVariantGroup({
    required this.size,
    required this.isActive,
    required this.isDisabled,
  });

  final BhaktimartCheckboxSize size;
  final bool isActive;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) => Column(
    spacing: context.dimensions.spacingM2,
    children: [
      for (final variant in BhaktimartCheckboxVariant.values)
        Center(
          child: Row(
            spacing: context.dimensions.spacingM1,
            mainAxisSize: MainAxisSize.min,
            children: [
              BhaktimartCheckbox(
                variant: variant,
                size: size,
                isActive: isActive,
                isDisabled: isDisabled,
                onChanged: (isActive) =>
                    debugPrint('${variant.name} changed to: $isActive'),
              ),
              SizedBox(
                width: _labelWidth,
                child: Text(
                  variant.name.toUpperCase(),
                  style: context.fonts.bodyL,
                ),
              ),
            ],
          ),
        ),
    ],
  );
}

class _InteractiveCheckboxDemo extends StatefulWidget {
  const _InteractiveCheckboxDemo({required this.isEnabled, super.key});

  final bool isEnabled;

  @override
  State<_InteractiveCheckboxDemo> createState() =>
      _InteractiveCheckboxDemoState();
}

class _InteractiveCheckboxDemoState extends State<_InteractiveCheckboxDemo> {
  final _activeStates = {
    for (final variant in BhaktimartCheckboxVariant.values) variant: false,
  };

  @override
  Widget build(BuildContext context) {
    final fonts = context.fonts;
    final spacingM1 = context.dimensions.spacingM1;

    return Column(
      spacing: context.dimensions.spacingM2,
      children: [
        Text('Small', style: fonts.headlineS),
        Column(
          spacing: spacingM1,
          children: [
            for (final variant in BhaktimartCheckboxVariant.values)
              Center(
                child: Row(
                  spacing: spacingM1,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BhaktimartCheckbox(
                      variant: variant,
                      isActive: _activeStates[variant]!,
                      isDisabled: !widget.isEnabled,
                      onChanged: (isActive) {
                        setState(() => _activeStates[variant] = isActive);
                        debugPrint('${variant.name} small: $isActive');
                      },
                    ),
                    SizedBox(
                      width: _labelWidth,
                      child: Text(
                        variant.name.toUpperCase(),
                        style: context.fonts.bodyL,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),

        BhaktimartGap.m1(),

        Text('Large', style: fonts.headlineS),
        Column(
          spacing: spacingM1,
          children: [
            for (final variant in BhaktimartCheckboxVariant.values)
              Center(
                child: Row(
                  spacing: spacingM1,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BhaktimartCheckbox(
                      variant: variant,
                      size: BhaktimartCheckboxSize.large,
                      isActive: _activeStates[variant]!,
                      isDisabled: !widget.isEnabled,
                      onChanged: (isActive) {
                        setState(() => _activeStates[variant] = isActive);
                        debugPrint('${variant.name} large: $isActive');
                      },
                    ),
                    SizedBox(
                      width: _labelWidth,
                      child: Text(
                        variant.name.toUpperCase(),
                        style: context.fonts.bodyL,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
