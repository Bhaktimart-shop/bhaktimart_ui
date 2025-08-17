import 'dart:ui';

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

class BhaktimartModal extends StatelessWidget {
  const BhaktimartModal({
    super.key,
    this.header,
    this.title,
    this.content,
    this.confirmButton,
    this.declineButton,
    this.backgroundFilter,
    this.borderRadius,
    this.headerMaxLines = 1,
    this.titleMaxLines = 5,
  });

  final String? header;
  final String? title;
  final List<Widget>? content;
  final Widget? confirmButton;
  final Widget? declineButton;
  final ImageFilter? backgroundFilter;
  final double? borderRadius;
  final int? headerMaxLines;
  final int? titleMaxLines;

  @override
  Widget build(BuildContext context) {
    final (:dimensions, colors: _, :fonts) = context.resources;
    final headerTextStyle = fonts.headlineS.bold;

    return BackdropFilter(
      filter:
          backgroundFilter ??
          ColorFilter.mode(
            const Color(0xFF302D38).withValues(alpha: 0.4),
            BlendMode.srcOut,
          ),
      child: Dialog(
        backgroundColor:
            // Not defined in color schema.
            const Color(0xFFF9F7F3),
        insetPadding: EdgeInsets.all(dimensions.spacingM3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? dimensions.radiusM3,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(dimensions.spacingM1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BhaktimartGap.s3(),
                  if (header != null) ...[
                    Text(
                      header!.toUpperCase(),
                      style: headerTextStyle,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: headerMaxLines,
                    ),
                    BhaktimartGap.s3(),
                  ],
                  if (title != null) ...[
                    Text(
                      title!,
                      style: headerTextStyle,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: titleMaxLines,
                    ),
                    BhaktimartGap.s3(),
                  ],
                  ...?content,
                  if (confirmButton != null) ...[
                    BhaktimartGap.m3(),
                    confirmButton!,
                    BhaktimartGap.s2(),
                  ],
                  if (declineButton != null) ...[
                    declineButton!,
                    BhaktimartGap.s3(),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
