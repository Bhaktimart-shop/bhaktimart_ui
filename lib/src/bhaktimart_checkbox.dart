import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

class BhaktimartCheckbox extends StatefulWidget {
  const BhaktimartCheckbox({
    required this.isActive,
    this.isDisabled = false,
    this.variant = BhaktimartCheckboxVariant.primary,
    this.size = BhaktimartCheckboxSize.small,
    this.onChanged,
    super.key,
  });

  static const _disabledAlpha = 0.5;

  final BhaktimartCheckboxVariant variant;
  final BhaktimartCheckboxSize size;
  final bool isActive;
  final bool isDisabled;
  final ValueChanged<bool>? onChanged;

  @override
  State<BhaktimartCheckbox> createState() => _BhaktimartCheckboxState();
}

class _BhaktimartCheckboxState extends State<BhaktimartCheckbox>
    with TickerProviderStateMixin {
  late AnimationController _checkmarkController;
  late Animation<double> _checkmarkScale;
  late Animation<double> _checkmarkOpacity;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final backgroundColor = _backgroundColor(colors);
    final borderColor = _borderColor(colors);
    final checkmarkColor = _checkmarkColor(colors);
    final dimension = widget.size.dimension;

    return MouseRegion(
      cursor: widget.isDisabled
          ? SystemMouseCursors.basic
          : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.isDisabled
            ? null
            : () => widget.onChanged?.call(!widget.isActive),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: dimension,
          height: dimension,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
              width: widget.size == BhaktimartCheckboxSize.small ? 0.5 : 1,
            ),
            borderRadius: BorderRadius.circular(
              widget.size.radius(context.dimensions),
            ),
          ),
          child: AnimatedBuilder(
            animation: _checkmarkController,
            builder: (context, child) => widget.isActive
                ? Transform.scale(
                    scale: _checkmarkScale.value,
                    child: Opacity(
                      opacity: _checkmarkOpacity.value,
                      child: BhaktimartVectorIcon(
                        'packages/bhaktimart_ui/assets/checkmark.svg',
                        size: widget.size.checkmarkSize,
                        color: checkmarkColor,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _checkmarkController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _checkmarkScale = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _checkmarkController, curve: Curves.elasticOut),
    );

    _checkmarkOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _checkmarkController,
        curve: const Interval(0, 0.5, curve: Curves.easeIn),
      ),
    );

    if (widget.isActive) {
      _checkmarkController.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(BhaktimartCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive) {
        _checkmarkController.forward();
      } else {
        _checkmarkController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _checkmarkController.dispose();
    super.dispose();
  }

  Color _backgroundColor(BhaktimartColors colors) => switch ((
    widget.variant,
    widget.isActive,
    widget.isDisabled,
  )) {
    (_, false, false) => colors.layer.primary,
    (_, false, true) => colors.layer.primary.withValues(
      alpha: BhaktimartCheckbox._disabledAlpha,
    ),
    (BhaktimartCheckboxVariant.primary, true, false) =>
      colors.background.inverted,
    (BhaktimartCheckboxVariant.primary, true, true) =>
      colors.background.inverted.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.brand, true, false) =>
      colors.checkbox.activeBrand,
    (BhaktimartCheckboxVariant.brand, true, true) =>
      colors.checkbox.activeBrand.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.confirmation, true, false) =>
      colors.checkbox.activeConfirmation,
    (BhaktimartCheckboxVariant.confirmation, true, true) =>
      colors.checkbox.activeConfirmation.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.alert, true, false) => colors.tag.modified,
    (BhaktimartCheckboxVariant.alert, true, true) =>
      colors.tag.modified.withValues(alpha: BhaktimartCheckbox._disabledAlpha),
    (BhaktimartCheckboxVariant.warning, true, false) => colors.tag.alertA,
    (BhaktimartCheckboxVariant.warning, true, true) =>
      colors.tag.alertA.withValues(alpha: BhaktimartCheckbox._disabledAlpha),
  };

  Color _borderColor(BhaktimartColors colors) => switch ((
    widget.variant,
    widget.isActive,
    widget.isDisabled,
  )) {
    (_, false, false) => colors.on.layerPrimary.tertiary,
    (_, false, true) => colors.on.layerPrimary.tertiary.withValues(
      alpha: BhaktimartCheckbox._disabledAlpha,
    ),
    (BhaktimartCheckboxVariant.primary, true, false) =>
      colors.background.inverted,
    (BhaktimartCheckboxVariant.primary, true, true) => Colors.transparent,
    (BhaktimartCheckboxVariant.brand, true, false) =>
      colors.border.checkbox.activeBrand,
    (BhaktimartCheckboxVariant.brand, true, true) =>
      colors.border.checkbox.activeBrand.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.confirmation, true, false) =>
      colors.border.checkbox.activeConfirmation,
    (BhaktimartCheckboxVariant.confirmation, true, true) =>
      colors.border.checkbox.activeConfirmation.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.alert, true, false) => colors.on.tag.modified,
    (BhaktimartCheckboxVariant.alert, true, true) =>
      colors.on.tag.modified.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.warning, true, false) => colors.on.tag.alertA,
    (BhaktimartCheckboxVariant.warning, true, true) =>
      colors.on.tag.alertA.withValues(alpha: BhaktimartCheckbox._disabledAlpha),
  };

  Color _checkmarkColor(BhaktimartColors colors) => switch ((
    widget.variant,
    widget.isActive,
    widget.isDisabled,
  )) {
    (BhaktimartCheckboxVariant.primary, true, false) ||
    (
      BhaktimartCheckboxVariant.primary,
      true,
      true,
    ) => colors.on.backgroundInverted.primary,
    (BhaktimartCheckboxVariant.brand, true, false) =>
      colors.on.checkbox.activeBrand,
    (BhaktimartCheckboxVariant.brand, true, true) =>
      colors.on.checkbox.activeBrand.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.confirmation, true, false) =>
      colors.on.checkbox.activeConfirmation,
    (BhaktimartCheckboxVariant.confirmation, true, true) =>
      colors.on.checkbox.activeConfirmation.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.alert, true, false) => colors.on.tag.modified,
    (BhaktimartCheckboxVariant.alert, true, true) =>
      colors.on.tag.modified.withValues(
        alpha: BhaktimartCheckbox._disabledAlpha,
      ),
    (BhaktimartCheckboxVariant.warning, true, false) => colors.on.tag.alertA,
    (BhaktimartCheckboxVariant.warning, true, true) =>
      colors.on.tag.alertA.withValues(alpha: BhaktimartCheckbox._disabledAlpha),
    (_, false, _) =>
      // This case should never be reached since checkmark is only shown when isActive=true.
      colors.on.layerPrimary.tertiary,
  };
}

enum BhaktimartCheckboxVariant { primary, brand, confirmation, alert, warning }

enum BhaktimartCheckboxSize {
  small,
  large;

  double get dimension => switch (this) {
    small => 16,
    large => 36,
  };

  double get checkmarkSize => switch (this) {
    small => 12,
    large => 24,
  };

  double radius(DimensionResources dimensions) => switch (this) {
    small => dimensions.radiusXS1,
    large => dimensions.radiusXS2,
  };
}
