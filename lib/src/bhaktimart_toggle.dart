import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

enum _BhaktimartToggleSize {
  small(width: 28, height: 14),
  large(width: 44, height: 24);

  const _BhaktimartToggleSize({required this.width, required this.height});

  final double width;
  final double height;
}

class BhaktimartToggle extends StatelessWidget {
  const BhaktimartToggle._({
    required this.onToggle,
    required this.isOn,
    required _BhaktimartToggleSize size,
    this.isDisabled = false,
    this.activeColor,
    super.key,
  }) : _size = size;

  factory BhaktimartToggle.large({
    required void Function({required bool isOn}) onToggle,
    required bool isOn,
    required bool isDisabled,
    Color? activeColor,
    Key? key,
  }) => BhaktimartToggle._(
    onToggle: onToggle,
    isOn: isOn,
    isDisabled: isDisabled,
    size: _BhaktimartToggleSize.large,
    activeColor: activeColor,
    key: key,
  );

  factory BhaktimartToggle.small({
    required void Function({required bool isOn}) onToggle,
    required bool isOn,
    required bool isDisabled,
    Color? activeColor,
    Key? key,
  }) => BhaktimartToggle._(
    onToggle: onToggle,
    isOn: isOn,
    isDisabled: isDisabled,
    size: _BhaktimartToggleSize.small,
    activeColor: activeColor,
    key: key,
  );

  final void Function({required bool isOn}) onToggle;
  final bool isOn;
  final bool isDisabled;
  final Color? activeColor;
  final _BhaktimartToggleSize _size;

  static const _padding = 3.0;
  static const _borderWidth = 2.0;
  static const _multiplier = 2.0;
  double get _toggleSize => _size.height - (_padding * _multiplier);
  double get _borderRadius => _size.height / _multiplier;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final flutterSwitch = FlutterSwitch(
      value: isOn,
      onToggle: (isOn) => onToggle(isOn: isOn),
      activeColor: activeColor ?? colors.button.brand,
      inactiveColor: colors.ghostButton.iconDisabled,
      width: _size.width,
      height: _size.height,
      toggleSize: _toggleSize,
      borderRadius: _borderRadius,
      padding: _padding,
      toggleBorder: Border.all(
        color: colors.border.inputField.selected.withValues(alpha: 0.1),
        width: _borderWidth,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      disabled: isDisabled,
    );

    return isDisabled
        ? flutterSwitch
        : MouseRegion(cursor: SystemMouseCursors.click, child: flutterSwitch);
  }
}
