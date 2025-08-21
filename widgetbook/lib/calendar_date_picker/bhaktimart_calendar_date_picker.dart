import 'dart:async';

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

String formatDate(DateTime date) => '${date.day}/${date.month}/${date.year}';

@UseCase(name: 'Date Range Selection', type: BhaktimartCalendarDatePicker)
Widget dateRangeCalendarDatePicker(BuildContext context) {
  final now = DateTime.now();
  final isMultiSelectionEnabled = context.knobs.boolean(
    label: 'Multi Selection Enabled',
    initialValue: true,
  );
  final isPastDatesEnabled = context.knobs.boolean(label: 'Past Dates Enabled');
  final initialStartDate = context.knobs.dateTime(
    label: 'Initial Start Date',
    initialValue: now,
    start: DateTime(2000),
    end: DateTime(2100),
  );
  final initialEndDate = context.knobs.dateTime(
    label: 'Initial End Date',
    initialValue: now.add(const Duration(days: 7)),
    start: DateTime(2000),
    end: DateTime(2100),
  );
  return BhaktimartCalendarDatePicker(
    config: BhaktimartCalendarConfig(
      initialStartDate: initialStartDate,
      initialEndDate: initialEndDate,
      isMultiSelectionEnabled: isMultiSelectionEnabled,
      isPastDatesEnabled: isPastDatesEnabled,
    ),
  );
}

@UseCase(name: 'Single Date Selection', type: BhaktimartCalendarDatePicker)
Widget singleDateCalendarDatePicker(BuildContext context) {
  final now = DateTime.now();
  final isPastDatesEnabled = context.knobs.boolean(
    label: 'Past Dates Enabled',
    initialValue: true,
  );
  final initialStartDate = context.knobs.dateTime(
    label: 'Initial Start Date',
    initialValue: now,
    start: DateTime(2000),
    end: DateTime(2100),
  );
  return BhaktimartCalendarDatePicker(
    config: BhaktimartCalendarConfig(
      initialStartDate: initialStartDate,
      isMultiSelectionEnabled: false,
      isPastDatesEnabled: isPastDatesEnabled,
    ),
  );
}

@UseCase(name: 'With Initial Dates', type: BhaktimartCalendarDatePicker)
Widget initialDatesCalendarDatePicker(BuildContext context) {
  final now = DateTime.now();
  final initialStartDate = context.knobs.dateTime(
    label: 'Initial Start Date',
    initialValue: now,
    start: DateTime(2000),
    end: DateTime(2100),
  );
  final initialEndDate = context.knobs.dateTime(
    label: 'Initial End Date',
    initialValue: now.add(const Duration(days: 7)),
    start: DateTime(2000),
    end: DateTime(2100),
  );
  return BhaktimartCalendarDatePicker(
    config: BhaktimartCalendarConfig(
      initialStartDate: initialStartDate,
      initialEndDate: initialEndDate,
    ),
  );
}

@UseCase(name: 'With Date Range Limits', type: BhaktimartCalendarDatePicker)
Widget dateRangeLimitsCalendarDatePicker(BuildContext context) {
  final now = DateTime.now();
  final minDate = context.knobs.dateTime(
    label: 'Min Date',
    initialValue: now,
    start: DateTime(2000),
    end: DateTime(2100),
  );
  final maxDate = context.knobs.dateTime(
    label: 'Max Date',
    initialValue: now.add(const Duration(days: 30)),
    start: DateTime(2000),
    end: DateTime(2100),
  );
  final isPastDatesEnabled = context.knobs.boolean(
    label: 'Past Dates Enabled',
    initialValue: true,
  );
  return BhaktimartCalendarDatePicker(
    config: BhaktimartCalendarConfig(
      minDate: minDate,
      maxDate: maxDate,
      isPastDatesEnabled: isPastDatesEnabled,
    ),
  );
}

@UseCase(name: 'All Variants', type: BhaktimartCalendarDatePicker)
Widget allVariantsCalendarDatePicker(BuildContext context) {
  final now = DateTime.now();
  final isMultiSelectionEnabled = context.knobs.boolean(
    label: 'Multi Selection Enabled',
    initialValue: true,
  );
  final isPastDatesEnabled = context.knobs.boolean(label: 'Past Dates Enabled');
  final hasMinDate = context.knobs.boolean(label: 'Set Min Date');
  final minDate = hasMinDate
      ? context.knobs.dateTime(
          label: 'Min Date',
          initialValue: now,
          start: DateTime(2000),
          end: DateTime(2100),
        )
      : null;
  final hasMaxDate = context.knobs.boolean(label: 'Set Max Date');
  final maxDate = hasMaxDate
      ? context.knobs.dateTime(
          label: 'Max Date',
          initialValue: now.add(const Duration(days: 30)),
          start: DateTime(2000),
          end: DateTime(2100),
        )
      : null;
  final initialStartDate = context.knobs.dateTime(
    label: 'Initial Start Date',
    initialValue: now,
    start: DateTime(2000),
    end: DateTime(2100),
  );
  final initialEndDate = context.knobs.dateTime(
    label: 'Initial End Date',
    initialValue: now.add(const Duration(days: 7)),
    start: DateTime(2000),
    end: DateTime(2100),
  );

  DateTime? selectedStart;
  DateTime? selectedEnd;
  var selectedRangeText = 'No date range selected';

  return StatefulBuilder(
    builder: (context, setState) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BhaktimartCalendarDatePicker(
          config: BhaktimartCalendarConfig(
            initialStartDate: initialStartDate,
            initialEndDate: initialEndDate,
            minDate: minDate,
            maxDate: maxDate,
            isMultiSelectionEnabled: isMultiSelectionEnabled,
            isPastDatesEnabled: isPastDatesEnabled,
            onDateRangeChanged: (start, end) {
              setState(() {
                selectedStart = start;
                selectedEnd = end;
                if (selectedStart != null && selectedEnd != null) {
                  selectedRangeText =
                      '${formatDate(selectedStart!)} - ${formatDate(selectedEnd!)}';
                } else if (selectedStart != null) {
                  selectedRangeText =
                      'Single date: ${formatDate(selectedStart!)}';
                } else {
                  selectedRangeText = 'No date range selected';
                }
              });
            },
          ),
        ),
        BhaktimartGap.m2(),
        Text('Selected: $selectedRangeText', style: context.fonts.bodyL),
      ],
    ),
  );
}

@UseCase(name: 'Dialog with Action Buttons', type: BhaktimartCalendarDatePicker)
Widget dialogCalendarDatePicker(BuildContext context) {
  final isMultiSelectionEnabled = context.knobs.boolean(
    label: 'Multi Selection Enabled',
    initialValue: true,
  );
  final isPastDatesEnabled = context.knobs.boolean(label: 'Past Dates Enabled');

  return _DialogCalendarDatePickerDemo(
    isMultiSelectionEnabled: isMultiSelectionEnabled,
    isPastDatesEnabled: isPastDatesEnabled,
  );
}

// The class below is a demo example used to display the dialog calendar date picker.
// ignore: prefer-match-file-name
class _DialogCalendarDatePickerDemo extends StatefulWidget {
  const _DialogCalendarDatePickerDemo({
    required this.isMultiSelectionEnabled,
    required this.isPastDatesEnabled,
  });
  final bool isMultiSelectionEnabled;
  final bool isPastDatesEnabled;

  @override
  State<_DialogCalendarDatePickerDemo> createState() =>
      _DialogCalendarDatePickerDemoState();
}

class _DialogCalendarDatePickerDemoState
    extends State<_DialogCalendarDatePickerDemo> {
  DateTime? selectedStart;
  DateTime? selectedEnd;
  String selectedRangeText = 'No date range selected';

  Future<void> _showCalendarDialogAndHandleResult(BuildContext context) async {
    try {
      final result = await BhaktimartCalendarDatePicker.showCalendarDialog(
        context: context,
        config: BhaktimartCalendarConfig(
          initialStartDate: selectedStart,
          initialEndDate: selectedEnd,
          isMultiSelectionEnabled: widget.isMultiSelectionEnabled,
          isPastDatesEnabled: widget.isPastDatesEnabled,
        ),
      );

      if (result != null && result.isNotEmpty) {
        if (widget.isMultiSelectionEnabled && result.length >= 2) {
          selectedStart = result.first;
          selectedEnd = result[1];
          if (selectedStart != null && selectedEnd != null) {
            selectedRangeText =
                '${formatDate(selectedStart!)} - ${formatDate(selectedEnd!)}';
          }
        } else if (result.isNotEmpty) {
          selectedStart = result.first;
          selectedEnd = null;
          selectedRangeText = 'Single date: ${formatDate(selectedStart!)}';
        }
      }
    } on Exception catch (error) {
      debugPrint('Dialog error: $error');
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      BhaktimartButton.primary(
        context,
        onPressed: () => unawaited(_showCalendarDialogAndHandleResult(context)),
        child: const Text('Open Date Picker Dialog'),
      ),
      BhaktimartGap.m2(),
      Text('Selected: $selectedRangeText', style: context.fonts.bodyL),
    ],
  );
}
