import 'package:flutter/material.dart';

class BhaktimartPopup extends StatefulWidget {
  const BhaktimartPopup({
    required this.child,
    required this.overlay,
    required this.controller,
    required this.overlayAnchor,
    required this.targetAnchor,
    this.barrierDismissibleCallback,
    this.shouldHideOverlayOnTapOutside = true,
    super.key,
    this.offset = Offset.zero,
    this.barrierColor,
  });

  /// The target widget that will be used to position the overlay widget.
  final Widget child;

  /// The widget which will be overlayed.
  final Widget overlay;

  /// The controller that will be used to show/hide the overlay.
  final OverlayPortalController controller;

  /// The alignment of the overlay widget relative to the target widget.
  /// Specifies the point of the overlay widget that will be anchored to the target widget.
  /// Defaults to [Alignment.topLeft].
  final Alignment overlayAnchor;

  /// The alignment of the target widget relative to the overlay widget.
  /// Specifies the point of the target widget that will be anchored to the overlay widget.
  /// Defaults to [Alignment.bottomLeft].
  final Alignment targetAnchor;

  /// The offset of the overlay widget relative to the target widget.
  /// This is useful for fine-tuning the position of the overlay widget.
  ///
  /// Defaults to [Offset.zero].
  final Offset offset;

  final Color? barrierColor;

  /// The callback function for a tap outside of the overlay widget.
  final VoidCallback? barrierDismissibleCallback;

  /// Indicator whether a tap outside of the overlay widget should result in hiding the overlay widget.
  final bool shouldHideOverlayOnTapOutside;

  @override
  State<BhaktimartPopup> createState() => _BhaktimartPopupState();
}

class _BhaktimartPopupState extends State<BhaktimartPopup> {
  final _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) => CompositedTransformTarget(
    link: _layerLink,
    child: OverlayPortal(
      controller: widget.controller,
      overlayChildBuilder: (_) => Stack(
        children: [
          if (widget.shouldHideOverlayOnTapOutside)
            GestureDetector(
              onTap: () {
                widget.controller.hide();
                widget.barrierDismissibleCallback?.call();
              },
              child: SizedBox.expand(
                child: ColoredBox(
                  color: widget.barrierColor ?? Colors.transparent,
                ),
              ),
            ),
          Align(
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: widget.offset,
              targetAnchor: widget.targetAnchor,
              followerAnchor: widget.overlayAnchor,
              child: widget.overlay,
            ),
          ),
        ],
      ),
      child: widget.child,
    ),
  );
}
