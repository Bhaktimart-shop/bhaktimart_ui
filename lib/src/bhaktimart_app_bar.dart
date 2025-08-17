import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

class BhaktimartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BhaktimartAppBar({
    this.actions,
    this.leading,
    this.dropdownMenu,
    super.key,
  });

  final List<Widget>? actions;
  final Widget? leading;
  final Widget? dropdownMenu;
  static const _borderThickness = 0.5;
  static const _height = 70.0;

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    final colors = context.colors;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: dimensions.spacingM1),
      decoration: BoxDecoration(
        color: colors.layer.primary,
        border: Border(
          bottom: BorderSide(
            color: colors.on.layerPrimary.tertiary,
            width: _borderThickness,
          ),
        ),
      ),
      height: _height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leading != null) leading!,
          if (actions != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...?actions,
                SizedBox(width: dimensions.spacingM1),
                dropdownMenu ?? const SizedBox(),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
