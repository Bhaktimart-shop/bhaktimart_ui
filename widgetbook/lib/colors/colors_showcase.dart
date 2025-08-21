// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: prefer-correct-identifier-length
// ignore_for_file: prefer-declaring-const-constructor
// ignore_for_file: avoid-type-casts
// ignore_for_file: prefer-correct-json-casts
// ignore_for_file: no-magic-number
// ignore_for_file: avoid-substring
// ignore_for_file: prefer-const-border-radius
// ignore_for_file: avoid-border-all
// ignore_for_file: prefer-boolean-prefixes
// ignore_for_file: format-comment
// ignore_for_file: map-keys-ordering
// ignore_for_file: prefer-moving-to-variable
// ignore_for_file: prefer-match-file-name
// ignore_for_file: avoid-dynamic
// ignore_for_file: sort_constructors_first
// ignore_for_file: inference_failure_on_untyped_parameter
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: member-ordering
// ignore_for_file: avoid_dynamic_calls

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

typedef ColorsShowcase = Widget;

@UseCase(name: 'Colors Showcase', type: ColorsShowcase)
ColorsShowcase colorsShowcase(BuildContext context) {
  final colors = context.colors;
  final showHex = context.knobs.boolean(
    label: 'Show Hex Values',
    initialValue: true,
  );
  final showRGB = context.knobs.boolean(
    label: 'Show RGB Values',
    initialValue: false,
  );

  // Define color sections data structure
  final colorSections = [
    ColorSection('Background Colors', {
      'Primary': colors.background.primary,
      'Brand': colors.background.brand,
      'Inverted': colors.background.inverted,
    }),
    ColorSection('On Background Colors', {
      'Primary': {
        'Primary': colors.on.backgroundPrimary.primary,
        'Secondary': colors.on.backgroundPrimary.secondary,
        'Tertiary': colors.on.backgroundPrimary.tertiary,
        'Shade': colors.on.backgroundPrimary.shade,
        'Brand': colors.on.backgroundPrimary.brand,
        'Alert': colors.on.backgroundPrimary.alert,
        'Warning': colors.on.backgroundPrimary.warning,
        'Confirmation': colors.on.backgroundPrimary.confirmation,
      },
      'Inverted': {
        'Primary': colors.on.backgroundInverted.primary,
        'Secondary': colors.on.backgroundInverted.secondary,
        'Tertiary': colors.on.backgroundInverted.tertiary,
        'Shade': colors.on.backgroundInverted.shade,
        'Brand': colors.on.backgroundInverted.brand,
        'BrandA': colors.on.backgroundInverted.brandA,
        'BrandB': colors.on.backgroundInverted.brandB,
      },
      'Brand': {'Primary': colors.on.backgroundBrand.primary},
    }),
    ColorSection('Layer Colors', {
      'Primary': colors.layer.primary,
      'Secondary': colors.layer.secondary,
      'Tertiary': colors.layer.tertiary,
    }),
    ColorSection('On Layer Colors', {
      'Primary': {
        'Primary': colors.on.layerPrimary.primary,
        'Secondary': colors.on.layerPrimary.secondary,
        'Tertiary': colors.on.layerPrimary.tertiary,
        'Shade': colors.on.layerPrimary.shade,
        'Brand': colors.on.layerPrimary.brand,
        'Alert': colors.on.layerPrimary.alert,
        'Warning': colors.on.layerPrimary.warning,
        'Confirmation': colors.on.layerPrimary.confirmation,
      },
      'Secondary': {
        'Primary': colors.on.layerSecondary.primary,
        'Secondary': colors.on.layerSecondary.secondary,
        'Tertiary': colors.on.layerSecondary.tertiary,
      },
      'Tertiary': {
        'Primary': colors.on.layerTertiary.primary,
        'Secondary': colors.on.layerTertiary.secondary,
        'Brand': colors.on.layerTertiary.brand,
      },
    }),
    ColorSection('Border Colors', {
      'Layer Primary': {
        'Primary': colors.border.layerPrimary.primary,
        'Secondary': colors.border.layerPrimary.secondary,
      },
      'Layer Secondary': {'Primary': colors.border.layerSecondary.primary},
      'Layer Tertiary': {'Primary': colors.border.layerTertiary.primary},
      'Input Field': {
        'Standard': colors.border.inputField.standard,
        'Selected': colors.border.inputField.selected,
        'Alert': colors.border.inputField.alert,
      },
      'Checkbox': {
        'Active Confirmation': colors.border.checkbox.activeConfirmation,
        'Active Brand': colors.border.checkbox.activeBrand,
        'Inactive Confirmation': colors.border.checkbox.inactiveConfirmation,
        'Inactive Brand': colors.border.checkbox.inactiveBrand,
      },
    }),
    ColorSection('Tag Colors', {
      'Brand': colors.tag.brand,
      'Brand A': colors.tag.brandA,
      'Brand B': colors.tag.brandB,
      'Neutral': colors.tag.neutral,
      'Neutral A': colors.tag.neutralA,
      'Neutral B': colors.tag.neutralB,
      'Neutral C': colors.tag.neutralC,
      'Neutral D': colors.tag.neutralD,
      'Alert': colors.tag.alert,
      'Alert A': colors.tag.alertA,
      'Warning': colors.tag.warning,
      'Confirmation': colors.tag.confirmation,
      'Confirmation A': colors.tag.confirmationA,
      'Confirmation B': colors.tag.confirmationB,
      'Active': colors.tag.active,
      'Modified': colors.tag.modified,
    }),
    ColorSection('On Tag Colors', {
      'Brand': colors.on.tag.brand,
      'Brand A': colors.on.tag.brandA,
      'Brand B Primary': colors.on.tag.brandB.primary,
      'Brand B Secondary': colors.on.tag.brandB.secondary,
      'Neutral': colors.on.tag.neutral,
      'Neutral A': colors.on.tag.neutralA,
      'Neutral B': colors.on.tag.neutralB,
      'Neutral C Primary': colors.on.tag.neutralC.primary,
      'Neutral C Secondary': colors.on.tag.neutralC.secondary,
      'Alert': colors.on.tag.alert,
      'Alert A': colors.on.tag.alertA,
      'Warning': colors.on.tag.warning,
      'Confirmation': colors.on.tag.confirmation,
      'Confirmation A': colors.on.tag.confirmationA,
      'Confirmation B': colors.on.tag.confirmationB,
      'Active': colors.on.tag.active,
      'Modified': colors.on.tag.modified,
    }),
    ColorSection('Button Colors', {
      'Primary': colors.button.primary,
      'Primary Hover': colors.button.primaryOnHover,
      'Primary Click': colors.button.primaryOnClick,
      'Primary Loading': colors.button.primaryLoading,
      'Primary Disabled': colors.button.primaryDisabled,
      'Secondary': colors.button.secondary,
      'Secondary Hover': colors.button.secondaryOnHover,
      'Secondary Click': colors.button.secondaryOnClick,
      'Secondary Loading': colors.button.secondaryLoading,
      'Secondary Disabled': colors.button.secondaryDisabled,
      'Brand': colors.button.brand,
      'Brand Hover': colors.button.brandOnHover,
      'Brand Click': colors.button.brandOnClick,
      'Brand Loading': colors.button.brandLoading,
      'Brand Disabled': colors.button.brandDisabled,
      'Destructive': colors.button.destructive,
      'Destructive Hover': colors.button.destructiveOnHover,
      'Destructive Click': colors.button.destructiveOnClick,
      'Destructive Loading': colors.button.destructiveLoading,
      'Destructive Disabled': colors.button.destructiveDisabled,
      'Filter': colors.button.filter,
      'Filter Selected': colors.button.filterSelected,
      'Inverted Hover': colors.button.invertedOnHover,
    }),
    ColorSection('On Button Colors', {
      'Primary': colors.on.button.primary,
      'Primary Disabled': colors.on.button.primaryDisabled,
      'Secondary': colors.on.button.secondary,
      'Secondary Disabled': colors.on.button.secondaryDisabled,
      'Brand': colors.on.button.brand,
      'Brand Disabled': colors.on.button.brandDisabled,
      'Destructive': colors.on.button.destructive,
      'Destructive Disabled': colors.on.button.destructiveDisabled,
      'Filter': colors.on.button.filter,
      'Inverted': colors.on.button.inverted,
      'Inverted Disabled': colors.on.button.invertedDisabled,
    }),
    ColorSection('Ghost Button Colors', {
      'Primary': colors.ghostButton.primary,
      'Primary Hover': colors.ghostButton.primaryOnHover,
      'Primary Click': colors.ghostButton.primaryOnClick,
      'Primary Disabled': colors.ghostButton.primaryDisabled,
      'Brand': colors.ghostButton.brand,
      'Brand Hover': colors.ghostButton.brandOnHover,
      'Brand Click': colors.ghostButton.brandOnClick,
      'Brand Disabled': colors.ghostButton.brandDisabled,
      'Destructive': colors.ghostButton.destructive,
      'Destructive Hover': colors.ghostButton.destructiveOnHover,
      'Destructive Click': colors.ghostButton.destructiveOnClick,
      'Destructive Disabled': colors.ghostButton.destructiveDisabled,
      'Icon': colors.ghostButton.icon,
      'Icon Hover': colors.ghostButton.iconOnHover,
      'Icon Click': colors.ghostButton.iconOnClick,
      'Icon Disabled': colors.ghostButton.iconDisabled,
      'Icon Inverted': colors.ghostButton.iconInverted,
      'Icon Inverted Hover': colors.ghostButton.iconInvertedOnHover,
      'Icon Inverted Click': colors.ghostButton.iconInvertedOnClick,
      'Icon Inverted Disabled': colors.ghostButton.iconInvertedDisabled,
    }),
    ColorSection('FAB Colors', {
      'Primary': colors.fab.primary,
      'Primary Hover': colors.fab.primaryOnHover,
      'Primary Click': colors.fab.primaryOnClick,
      'Primary Disabled': colors.fab.primaryDisabled,
      'Secondary': colors.fab.secondary,
      'Secondary Hover': colors.fab.secondaryOnHover,
      'Secondary Click': colors.fab.secondaryOnClick,
      'Secondary Disabled': colors.fab.secondaryDisabled,
      'Secondary Brand': colors.fab.secondaryBrand,
      'Secondary Brand Hover': colors.fab.secondaryBrandOnHover,
      'Secondary Brand Click': colors.fab.secondaryBrandOnClick,
      'Secondary Brand Disabled': colors.fab.secondaryBrandDisabled,
    }),
    ColorSection('On FAB Colors', {
      'Primary': colors.on.fab.primary,
      'Primary Disabled': colors.on.fab.primaryDisabled,
      'Secondary': colors.on.fab.secondary,
      'Secondary Disabled': colors.on.fab.secondaryDisabled,
      'Secondary Brand': colors.on.fab.secondaryBrand,
      'Secondary Brand Disabled': colors.on.fab.secondaryBrandDisabled,
    }),
    ColorSection('Overlay Colors', {
      'Primary': colors.overlay.primary,
      'Secondary': colors.overlay.secondary,
    }),
    ColorSection('Input Field Colors', {
      'Active': colors.inputField.active,
      'Inactive': colors.inputField.inactive,
    }),
    ColorSection('On Input Field Colors', {
      'Standard': colors.on.inputField.standard,
      'Inactive': colors.on.inputField.inactive,
      'Filled': colors.on.inputField.filled,
      'Alert': colors.on.inputField.alert,
    }),
    ColorSection('Checkbox Colors', {
      'Active Confirmation': colors.checkbox.activeConfirmation,
      'Active Brand': colors.checkbox.activeBrand,
      'Inactive Confirmation': colors.checkbox.inactiveConfirmation,
      'Inactive Brand': colors.checkbox.inactiveBrand,
    }),
    ColorSection('On Checkbox Colors', {
      'Active Confirmation': colors.on.checkbox.activeConfirmation,
      'Active Brand': colors.on.checkbox.activeBrand,
      'Inactive': colors.on.checkbox.inactive,
    }),
  ];

  return SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: colorSections
            .map((section) => _buildSection(section, showHex, showRGB))
            .toList(),
      ),
    ),
  );
}

class ColorSection {
  final String title;
  final dynamic colors;

  ColorSection(this.title, this.colors);
}

Widget _buildSection(ColorSection section, bool showHex, bool showRGB) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        if (section.colors is Map<String, Color>)
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.2,
            ),
            itemCount: (section.colors as Map<String, Color>).length,
            itemBuilder: (context, index) {
              final entry = section.colors.entries.elementAt(index);
              return _buildColorItem(
                (entry as MapEntry<String, Color>).key,
                entry.value,
                showHex,
                showRGB,
              );
            },
          )
        else if (section.colors is Map<String, Map<String, Color>>)
          ...(section.colors as Map<String, Map<String, Color>>).entries.map(
            (e) => _buildSubSection(e.key, e.value, showHex, showRGB),
          ),
      ],
    ),
  );
}

Widget _buildSubSection(
  String title,
  Map<String, Color> colors,
  bool showHex,
  bool showRGB,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final entry = colors.entries.elementAt(index);
            return _buildColorItem(entry.key, entry.value, showHex, showRGB);
          },
        ),
      ],
    ),
  );
}

Widget _buildColorItem(String name, Color color, bool showHex, bool showRGB) {
  final contrastColor = color.computeLuminance() > 0.5
      ? Colors.black
      : Colors.white;

  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: const Color(0xFFE0E0E0)),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: contrastColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (showHex)
          Text(
            'Hex: ${color.toString().substring(6, 16).toUpperCase()}',
            style: TextStyle(color: contrastColor, fontSize: 14),
          ),
        if (showRGB)
          Text(
            'RGB: ${color.r}, ${color.g}, ${color.b}',
            style: TextStyle(color: contrastColor, fontSize: 14),
          ),
      ],
    ),
  );
}
