import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

const _length = 5;

@UseCase(name: 'Enabled', type: BhaktimartPinput)
Widget enabledBhaktimartPinput(BuildContext context) => Center(
  child: BhaktimartPinput(
    length: _length,
    textController: TextEditingController(
      text: context.knobs.string(label: '12345', initialValue: '12345'),
    ),
  ),
);

@UseCase(name: 'Disabled', type: BhaktimartPinput)
Widget disabledBhaktimartPinput(BuildContext context) => Center(
  child: BhaktimartPinput(
    length: _length,
    textController: TextEditingController(
      text: context.knobs.string(label: '12345', initialValue: '12345'),
    ),
    isEnabled: false,
  ),
);
