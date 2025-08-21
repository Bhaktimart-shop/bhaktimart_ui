// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/button/bhaktimart_button.dart' as _i7;
import 'package:widgetbook_workspace/calendar_date_picker/bhaktimart_calendar_date_picker.dart'
    as _i8;
import 'package:widgetbook_workspace/checkbox/bhaktimart_checkbox.dart' as _i2;
import 'package:widgetbook_workspace/chips/bhaktimart_chip.dart' as _i3;
import 'package:widgetbook_workspace/colors/colors_showcase.dart' as _i9;
import 'package:widgetbook_workspace/fonts/fonts_showcase.dart' as _i10;
import 'package:widgetbook_workspace/loader/bhaktimart_loader.dart' as _i4;
import 'package:widgetbook_workspace/pinput/bhaktimart_pinput.dart' as _i5;
import 'package:widgetbook_workspace/widgets/bhaktimart_toggle.dart' as _i6;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookComponent(
    name: 'BhaktimartCheckbox',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'All Variants',
        builder: _i2.allVariantsCheckbox,
        designLink:
            'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=0-272&t=cK9WO0KlSf1iCS3e-4',
      ),
      _i1.WidgetbookUseCase(
        name: 'Interactive',
        builder: _i2.interactiveCheckbox,
      ),
    ],
  ),
  _i1.WidgetbookComponent(
    name: 'BhaktimartChip',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Large',
        builder: _i3.largeChip,
        designLink:
            'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2816&m=dev',
      ),
      _i1.WidgetbookUseCase(
        name: 'Medium',
        builder: _i3.mediumChip,
        designLink:
            'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2821&m=dev',
      ),
      _i1.WidgetbookUseCase(
        name: 'Small',
        builder: _i3.smallChip,
        designLink:
            'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3950-2859&m=dev',
      ),
    ],
  ),
  _i1.WidgetbookLeafComponent(
    name: 'BhaktimartLoader',
    useCase: _i1.WidgetbookUseCase(
      name: 'Loader',
      builder: _i4.standardLoader,
      designLink:
          'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=1394-702',
    ),
  ),
  _i1.WidgetbookComponent(
    name: 'BhaktimartPinput',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Disabled',
        builder: _i5.disabledBhaktimartPinput,
      ),
      _i1.WidgetbookUseCase(
        name: 'Enabled',
        builder: _i5.enabledBhaktimartPinput,
      ),
    ],
  ),
  _i1.WidgetbookLeafComponent(
    name: 'BhaktimartToggle',
    useCase: _i1.WidgetbookUseCase(
      name: 'BhaktimartToggle',
      builder: _i6.bhaktimartToggle,
      designLink:
          'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3467-2565&t=cK9WO0KlSf1iCS3e-4',
    ),
  ),
  _i1.WidgetbookFolder(
    name: 'button',
    children: [
      _i1.WidgetbookComponent(
        name: 'BhaktimartButton',
        useCases: [
          _i1.WidgetbookUseCase(name: 'Brand', builder: _i7.brandButton),
          _i1.WidgetbookUseCase(
            name: 'Destructive',
            builder: _i7.destructiveButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'Primary',
            builder: _i7.primaryButton,
            designLink:
                'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=598-9209&t=LxovNOg8tbINcaVU-1',
          ),
          _i1.WidgetbookUseCase(
            name: 'Secondary',
            builder: _i7.secondaryButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'SizedToFit',
            builder: _i7.sizedToFitButton,
            designLink:
                'https://www.figma.com/design/sjq53zsTTetxP7n2QzKJSJ/Bhaktimart-Group-Library?node-id=3681-3388&t=qlSbyxszsab4Bbdm-0',
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'calendar_date_picker',
    children: [
      _i1.WidgetbookComponent(
        name: 'BhaktimartCalendarDatePicker',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'All Variants',
            builder: _i8.allVariantsCalendarDatePicker,
          ),
          _i1.WidgetbookUseCase(
            name: 'Date Range Selection',
            builder: _i8.dateRangeCalendarDatePicker,
          ),
          _i1.WidgetbookUseCase(
            name: 'Dialog with Action Buttons',
            builder: _i8.dialogCalendarDatePicker,
          ),
          _i1.WidgetbookUseCase(
            name: 'Single Date Selection',
            builder: _i8.singleDateCalendarDatePicker,
          ),
          _i1.WidgetbookUseCase(
            name: 'With Date Range Limits',
            builder: _i8.dateRangeLimitsCalendarDatePicker,
          ),
          _i1.WidgetbookUseCase(
            name: 'With Initial Dates',
            builder: _i8.initialDatesCalendarDatePicker,
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookComponent(
        name: 'Widget',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Colors Showcase',
            builder: _i9.colorsShowcase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Fonts Showcase',
            builder: _i10.fontsShowcase,
          ),
        ],
      ),
    ],
  ),
];
