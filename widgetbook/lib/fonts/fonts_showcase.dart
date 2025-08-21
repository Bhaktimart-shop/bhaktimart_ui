import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

typedef Fonts = Widget;

@UseCase(name: 'Fonts Showcase', type: Fonts)
Fonts fontsShowcase(BuildContext context) {
  final fonts = context.fonts;
  final isLight = context.knobs.boolean(label: 'Show Light Weight');
  final isSemiBold = context.knobs.boolean(label: 'Show SemiBold Weight');
  final isBold = context.knobs.boolean(label: 'Show Bold Weight');

  return SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 32,
      children: [
        _buildSection('Display', [
          _buildFontItem(
            'Display XXL',
            fonts.displayXXL,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Display XL',
            fonts.displayXL,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Display L',
            fonts.displayL,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Display M',
            fonts.displayM,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Display S',
            fonts.displayS,
            isLight,
            isSemiBold,
            isBold,
          ),
        ]),

        _buildSection('Headline', [
          _buildFontItem(
            'Headline XL',
            fonts.headlineXL,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Headline L',
            fonts.headlineL,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Headline M',
            fonts.headlineM,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Headline S',
            fonts.headlineS,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Headline XS',
            fonts.headlineXS,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Headline XXS',
            fonts.headlineXXS,
            isLight,
            isSemiBold,
            isBold,
          ),
        ]),

        _buildSection('Label', [
          _buildFontItem('Label L', fonts.labelL, isLight, isSemiBold, isBold),
          _buildFontItem('Label M', fonts.labelM, isLight, isSemiBold, isBold),
        ]),
        _buildSection('Body', [
          _buildFontItem('Body L', fonts.bodyL, isLight, isSemiBold, isBold),
        ]),

        _buildSection('Caption', [
          _buildFontItem(
            'Caption M',
            fonts.captionM,
            isLight,
            isSemiBold,
            isBold,
          ),
          _buildFontItem(
            'Caption S',
            fonts.captionS,
            isLight,
            isSemiBold,
            isBold,
          ),
        ]),
      ],
    ),
  );
}

Widget _buildSection(String title, List<Widget> items) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 16),
    ...items,
  ],
);

Widget _buildFontItem(
  String name,
  TextStyle style,
  bool isLight,
  bool isSemiBold,
  bool isBold,
) => Padding(
  padding: const EdgeInsets.symmetric(vertical: 8),
  child: Column(
    spacing: 16,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: 8),
      Text(
        'Regular: The quick brown fox jumps over the lazy dog',
        style: style,
      ),
      if (isLight) ...[
        const SizedBox(height: 4),
        Text(
          'Light: The quick brown fox jumps over the lazy dog',
          style: style.light,
        ),
      ],
      if (isSemiBold) ...[
        const SizedBox(height: 4),
        Text(
          'SemiBold: The quick brown fox jumps over the lazy dog',
          style: style.semiBold,
        ),
      ],
      if (isBold) ...[
        const SizedBox(height: 4),
        Text(
          'Bold: The quick brown fox jumps over the lazy dog',
          style: style.bold,
        ),
      ],
      const Divider(),
    ],
  ),
);
