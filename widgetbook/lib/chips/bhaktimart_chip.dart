import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/assets/assets.gen.dart';
import 'package:widgetbook_workspace/utils/custom_knobs.dart';

double? widthKnob(BuildContext context) => doubleKnob(context, label: 'Width');

const spacing = 50.0;
final searchIcon = Assets.vector.search;

@UseCase(
  name: 'Large',
  type: BhaktimartChip,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2816&m=dev',
)
Widget largeChip(BuildContext context) {
  final colors = context.colors;
  final onTagColors = colors.on.tag;

  final primaryBackgroundColor = colors.tag.brand;
  final primaryTextColor = onTagColors.brand;
  final secondaryBackgroundColor = colors.tag.neutralC;
  final secondaryTextColor = onTagColors.neutralC.primary;
  final secondaryBorderColor = secondaryTextColor;

  const iconSize = 16.0;
  final iconPrimary = BhaktimartVectorIcon(
    searchIcon,
    color: primaryTextColor,
    size: iconSize,
  );
  final iconSecondary = BhaktimartVectorIcon(
    searchIcon,
    color: secondaryBorderColor,
    size: iconSize,
  );

  final primaryKnob = context.knobs.string(
    label: 'Primary text',
    initialValue: 'Primary',
  );
  final secondaryKnob = context.knobs.string(
    label: 'Secondary text',
    initialValue: 'Secondary',
  );

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: [
        BhaktimartChip.large(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
        ),
        BhaktimartChip.large(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          leadingIcon: iconPrimary,
        ),
        BhaktimartChip.large(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          trailingIcon: iconPrimary,
        ),
        BhaktimartChip.large(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
        ),
        BhaktimartChip.large(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          leadingIcon: iconSecondary,
        ),
        BhaktimartChip.large(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          trailingIcon: iconSecondary,
        ),
      ],
    ),
  );
}

@UseCase(
  name: 'Medium',
  type: BhaktimartChip,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2821&m=dev',
)
Widget mediumChip(BuildContext context) {
  final colors = context.colors;
  final onTagColors = colors.on.tag;

  final primaryBackgroundColor = colors.tag.brand;
  final primaryTextColor = onTagColors.brand;
  final secondaryBackgroundColor = colors.tag.neutralC;
  final secondaryTextColor = onTagColors.neutralC.primary;
  final secondaryBorderColor = secondaryTextColor;

  const iconSize = 12.0;

  final iconPrimary = BhaktimartVectorIcon(
    searchIcon,
    color: primaryTextColor,
    size: iconSize,
  );
  final iconSecondary = BhaktimartVectorIcon(
    searchIcon,
    color: secondaryBorderColor,
    size: iconSize,
  );

  final primaryKnob = context.knobs.string(
    label: 'Primary text',
    initialValue: 'Primary',
  );
  final secondaryKnob = context.knobs.string(
    label: 'Secondary text',
    initialValue: 'Secondary',
  );

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: [
        BhaktimartChip.medium(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
        ),
        BhaktimartChip.medium(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          leadingIcon: iconPrimary,
        ),
        BhaktimartChip.medium(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          trailingIcon: iconPrimary,
        ),
        BhaktimartChip.medium(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
        ),
        BhaktimartChip.medium(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          leadingIcon: iconSecondary,
        ),
        BhaktimartChip.medium(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          trailingIcon: iconSecondary,
        ),
      ],
    ),
  );
}

@UseCase(
  name: 'Small',
  type: BhaktimartChip,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2859&m=dev',
)
Widget smallChip(BuildContext context) {
  final colors = context.colors;
  final onTagColors = colors.on.tag;

  final primaryBackgroundColor = colors.tag.brand;
  final primaryTextColor = onTagColors.brand;
  final secondaryBackgroundColor = colors.tag.neutralC;
  final secondaryTextColor = onTagColors.neutralC.primary;
  final secondaryBorderColor = secondaryTextColor;

  final searchIcon = Assets.vector.search;
  const iconSize = 12.0;

  final iconPrimary = BhaktimartVectorIcon(
    searchIcon,
    color: primaryTextColor,
    size: iconSize,
  );
  final iconSecondary = BhaktimartVectorIcon(
    searchIcon,
    color: secondaryBorderColor,
    size: iconSize,
  );

  final primaryKnob = context.knobs.string(
    label: 'Primary text',
    initialValue: 'Primary',
  );
  final secondaryKnob = context.knobs.string(
    label: 'Secondary text',
    initialValue: 'Secondary',
  );

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: [
        BhaktimartChip.small(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
        ),
        BhaktimartChip.small(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          leadingIcon: iconPrimary,
        ),
        BhaktimartChip.small(
          context,
          label: primaryKnob,
          backgroundColor: primaryBackgroundColor,
          textColor: primaryTextColor,
          trailingIcon: iconPrimary,
        ),
        BhaktimartChip.small(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
        ),
        BhaktimartChip.small(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          leadingIcon: iconSecondary,
        ),
        BhaktimartChip.small(
          context,
          label: secondaryKnob,
          backgroundColor: secondaryBackgroundColor,
          textColor: secondaryTextColor,
          borderColor: secondaryBorderColor,
          trailingIcon: iconSecondary,
        ),
      ],
    ),
  );
}
