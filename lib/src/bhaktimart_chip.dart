import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

class BhaktimartChip extends StatelessWidget {
  const BhaktimartChip._({
    required _BhaktimartChipSize size,
    required this.textStyle,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.leadingIcon,
    required this.width,
    required this.borderColor,
    required this.isSelectable,
    required this.trailingIcon,
    super.key,
  }) : _size = size;

  factory BhaktimartChip.large(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip._(
    size: _BhaktimartChipSize.large,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    textStyle: context.fonts.labelL,
    textColor: textColor,
    borderColor: borderColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.medium(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip._(
    size: _BhaktimartChipSize.medium,
    label: label,
    width: width,
    backgroundColor: backgroundColor ?? context.colors.tag.brandB,
    textStyle: context.fonts.labelM,
    textColor: textColor,
    borderColor: borderColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.small(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip._(
    size: _BhaktimartChipSize.small,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    textStyle: context.fonts.captionM,
    textColor: textColor,
    borderColor: borderColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.largeNeutral(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) {
    final onTagNeutralCPrimary = context.colors.on.tag.neutralC.primary;

    return BhaktimartChip.large(
      context,
      label: label,
      width: width,
      backgroundColor: backgroundColor,
      textColor: borderColor ?? onTagNeutralCPrimary,
      borderColor: borderColor ?? onTagNeutralCPrimary,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      isSelectable: isSelectable,
      key: key,
    );
  }

  factory BhaktimartChip.largeFilled(
    BuildContext context, {
    required Color backgroundColor,
    String? label,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.large(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    textColor: textColor ?? context.colors.on.tag.brand,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.largeDefault(
    BuildContext context, {
    String? label,
    Color? borderColor,
    Color? backgroundColor,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.large(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    borderColor: borderColor ?? context.colors.on.tag.neutralC.secondary,
    textColor: textColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.mediumNeutral(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) {
    final onTagNeutralCPrimary = context.colors.on.tag.neutralC.primary;
    return BhaktimartChip.medium(
      context,
      label: label,
      width: width,
      backgroundColor: backgroundColor,
      textColor: borderColor ?? onTagNeutralCPrimary,
      borderColor: borderColor ?? onTagNeutralCPrimary,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      isSelectable: isSelectable,
      key: key,
    );
  }

  factory BhaktimartChip.mediumFilled(
    BuildContext context, {
    required Color backgroundColor,
    String? label,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.medium(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    textColor: textColor ?? context.colors.on.tag.brand,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.mediumDefault(
    BuildContext context, {
    String? label,
    Color? borderColor,
    Color? backgroundColor,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.medium(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    borderColor: borderColor ?? context.colors.on.tag.neutralC.secondary,
    textColor: textColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.smallNeutral(
    BuildContext context, {
    String? label,
    double? width,
    Color? backgroundColor,
    Color? borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) {
    final onTagNeutralCPrimary = context.colors.on.tag.neutralC.primary;
    return BhaktimartChip.small(
      context,
      label: label,
      width: width,
      backgroundColor: backgroundColor,
      textColor: borderColor ?? onTagNeutralCPrimary,
      borderColor: borderColor ?? onTagNeutralCPrimary,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      isSelectable: isSelectable,
      key: key,
    );
  }

  factory BhaktimartChip.smallFilled(
    BuildContext context, {
    required Color backgroundColor,
    String? label,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.small(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    textColor: textColor ?? context.colors.on.tag.brand,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  factory BhaktimartChip.smallDefault(
    BuildContext context, {
    String? label,
    Color? borderColor,
    Color? backgroundColor,
    double? width,
    Color? textColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isSelectable = false,
    Key? key,
  }) => BhaktimartChip.small(
    context,
    label: label,
    width: width,
    backgroundColor: backgroundColor,
    borderColor: borderColor ?? context.colors.on.tag.neutralC.secondary,
    textColor: textColor,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    isSelectable: isSelectable,
    key: key,
  );

  final _BhaktimartChipSize _size;
  final String? label;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle textStyle;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final double? width;
  final bool isSelectable;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final dimensions = context.dimensions;

    final labelStyle = textStyle.copyWith(
      color: textColor,
      overflow: TextOverflow.ellipsis,
    );

    Widget? labelWidget;
    if (isSelectable && label != null) {
      labelWidget = SelectableText(
        label!,
        style: labelStyle,
        textAlign: TextAlign.center,
        maxLines: 1,
      );
    } else if (label != null) {
      labelWidget = Text(
        label!,
        style: labelStyle,
        textAlign: TextAlign.center,
        maxLines: 1,
      );
    }

    final hasLeadingIcon = leadingIcon != null;
    final hasTrailingIcon = trailingIcon != null;

    final verticalPadding = dimensions.spacingXS1;

    final rowSpacing = switch (_size) {
      _BhaktimartChipSize.small ||
      _BhaktimartChipSize.medium => dimensions.spacingXS1,
      _BhaktimartChipSize.large => dimensions.spacingS1,
    };

    final defaultPadding = switch (_size) {
      _BhaktimartChipSize.small ||
      _BhaktimartChipSize.medium => dimensions.spacingS3,
      _BhaktimartChipSize.large => dimensions.spacingM1,
    };

    final reducedPadding = switch (_size) {
      _BhaktimartChipSize.small ||
      _BhaktimartChipSize.medium => dimensions.spacingS2,
      _BhaktimartChipSize.large => dimensions.spacingS3,
    };

    final leftPadding = hasLeadingIcon ? reducedPadding : defaultPadding;
    final rightPadding = hasTrailingIcon ? reducedPadding : defaultPadding;

    return Container(
      width: width,
      padding: EdgeInsets.only(
        top: verticalPadding,
        bottom: verticalPadding,
        left: leftPadding,
        right: rightPadding,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.layer.primary,
        border: Border.all(
          width: 0.5,
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(dimensions.radiusM1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: rowSpacing,
        children: [
          if (leadingIcon != null) leadingIcon!,
          if (labelWidget != null) Flexible(child: labelWidget),
          if (trailingIcon != null) trailingIcon!,
        ],
      ),
    );
  }
}

enum _BhaktimartChipSize { small, medium, large }
