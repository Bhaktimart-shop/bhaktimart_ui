import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/assets/assets.gen.dart';

@UseCase(
  name: 'Primary',
  type: BhaktimartButton,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=598-9209&t=LxovNOg8tbINcaVU-1',
)
Widget primaryButton(BuildContext context) => Center(
  child: BhaktimartButton.primary(
    context,
    child: Text(
      context.knobs.string(
        label: 'Button text',
        initialValue: 'Primary Button',
      ),
    ),
    onPressed: () => debugPrint('Primary Button pressed'),
  ),
);

@UseCase(name: 'Secondary', type: BhaktimartButton)
Widget secondaryButton(BuildContext context) => Center(
  child: BhaktimartButton.secondary(
    context,
    child: Text(
      context.knobs.string(
        label: 'Button text',
        initialValue: 'Secondary Button',
      ),
    ),
    onPressed: () => debugPrint('Secondary Button pressed'),
  ),
);

@UseCase(name: 'Brand', type: BhaktimartButton)
Widget brandButton(BuildContext context) => Center(
  child: BhaktimartButton.brand(
    context,
    child: Text(
      context.knobs.string(label: 'Button text', initialValue: 'Brand Button'),
    ),
    onPressed: () => debugPrint('Brand Button pressed'),
  ),
);

@UseCase(name: 'Destructive', type: BhaktimartButton)
Widget destructiveButton(BuildContext context) => Center(
  child: BhaktimartButton.destructive(
    context,
    child: Text(
      context.knobs.string(
        label: 'Button text',
        initialValue: 'Destructive Button',
      ),
    ),
    onPressed: () => debugPrint('Destructive Button pressed'),
  ),
);

const label = 'Primary Button';
final iconSmall = BhaktimartVectorIcon(Assets.vector.search, size: 14);
final iconBig = BhaktimartVectorIcon(Assets.vector.search, size: 16);

@UseCase(
  name: 'SizedToFit',
  type: BhaktimartButton,
  designLink:
      'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3681-3388&t=qlSbyxszsab4Bbdm-0',
)
Widget sizedToFitButton(BuildContext context) => Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 50,
    children: [
      BhaktimartButton.primaryExtraSmall(
        context,
        width: null,
        onPressed: () => debugPrint('Primary Extra Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primaryExtraSmall(
        context,
        width: null,
        leadingIcon: iconSmall,
        onPressed: () => debugPrint('Primary Extra Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primaryExtraSmall(
        context,
        width: null,
        trailingIcon: iconSmall,
        onPressed: () => debugPrint('Primary Extra Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primarySmall(
        context,
        width: null,
        onPressed: () => debugPrint('Primary Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primarySmall(
        context,
        width: null,
        leadingIcon: iconSmall,
        onPressed: () => debugPrint('Primary Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primarySmall(
        context,
        width: null,
        trailingIcon: iconSmall,
        onPressed: () => debugPrint('Primary Small Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      //
      BhaktimartButton.primary(
        context,
        width: null,
        onPressed: () => debugPrint('Primary Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primary(
        context,
        width: null,
        leadingIcon: iconBig,
        onPressed: () => debugPrint('Primary Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primary(
        context,
        width: null,
        trailingIcon: iconBig,
        onPressed: () => debugPrint('Primary Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      //
      BhaktimartButton.primaryLarge(
        context,
        width: null,
        onPressed: () => debugPrint('Primary Large Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primaryLarge(
        context,
        width: null,
        leadingIcon: iconBig,
        onPressed: () => debugPrint('Primary Large Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
      BhaktimartButton.primaryLarge(
        context,
        width: null,
        trailingIcon: iconBig,
        onPressed: () => debugPrint('Primary Large Button pressed'),
        child: Text(context.knobs.string(label: label, initialValue: label)),
      ),
    ],
  ),
);
