import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/calendar_date_picker/bhaktimart_calendar_theme_config.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

/// [BhaktimartCalendarDatePicker] Usage:
/// Inline: Place [BhaktimartCalendarDatePicker] directly in your widget tree.
/// Dialog: Call [BhaktimartCalendarDatePicker.showCalendarDialog(...) to show as a dialog popup.
class BhaktimartCalendarDatePicker extends StatefulWidget {
  const BhaktimartCalendarDatePicker({
    this.config = const BhaktimartCalendarConfig(),
    super.key,
  });

  final BhaktimartCalendarConfig config;

  /// Show the calendar date picker as a dialog.
  static Future<List<DateTime?>?> showCalendarDialog({
    required BuildContext context,
    BhaktimartCalendarConfig config = const BhaktimartCalendarConfig(),
  }) => showDialog(
    context: context,
    builder: (context) => _BhaktimartCalendarDatePickerDialog(config: config),
  );

  @override
  State<BhaktimartCalendarDatePicker> createState() =>
      _BhaktimartCalendarDatePickerState();
}

/// Configuration class for [BhaktimartCalendarDatePicker].
class BhaktimartCalendarConfig {
  const BhaktimartCalendarConfig({
    this.initialStartDate,
    this.initialEndDate,
    this.minDate,
    this.maxDate,
    this.isMultiSelectionEnabled = true,
    this.isPastDatesEnabled = false,
    this.cancelText,
    this.okText,
    this.onDateRangeChanged,
  });

  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final DateTime? minDate;
  final DateTime? maxDate;
  final bool isMultiSelectionEnabled;
  final bool isPastDatesEnabled;
  final String? cancelText;
  final String? okText;
  final void Function(DateTime? startDate, DateTime? endDate)?
  onDateRangeChanged;

  BhaktimartCalendarConfig copyWith({
    DateTime? initialStartDate,
    DateTime? initialEndDate,
    DateTime? minDate,
    DateTime? maxDate,
    bool? isMultiSelectionEnabled,
    bool? isPastDatesEnabled,
    String? cancelText,
    String? okText,
    void Function(DateTime? startDate, DateTime? endDate)? onDateRangeChanged,
  }) => BhaktimartCalendarConfig(
    initialStartDate: initialStartDate ?? this.initialStartDate,
    initialEndDate: initialEndDate ?? this.initialEndDate,
    minDate: minDate ?? this.minDate,
    maxDate: maxDate ?? this.maxDate,
    isMultiSelectionEnabled:
        isMultiSelectionEnabled ?? this.isMultiSelectionEnabled,
    isPastDatesEnabled: isPastDatesEnabled ?? this.isPastDatesEnabled,
    cancelText: cancelText ?? this.cancelText,
    okText: okText ?? this.okText,
    onDateRangeChanged: onDateRangeChanged ?? this.onDateRangeChanged,
  );
}

class _BhaktimartCalendarDatePickerState
    extends State<BhaktimartCalendarDatePicker> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    final (:colors, :dimensions, fonts: _) = context.resources;

    final containerWidth = 350.0;
    final getSelectedDates = _getSelectedDates();
    final themeConfig = BhaktimartCalendarThemeConfig(
      context: context,
      selectedDates: getSelectedDates,
      isMultiSelectionEnabled: widget.config.isMultiSelectionEnabled,
      isPastDatesEnabled: widget.config.isPastDatesEnabled,
      minDate: widget.config.minDate,
      maxDate: widget.config.maxDate,
    );
    return Material(
      color: colors.layer.primary,
      elevation: 8,
      borderRadius: BorderRadius.circular(dimensions.radiusM1),
      child: Container(
        width: containerWidth,
        decoration: _buildContainerDecoration(context),
        padding: EdgeInsets.symmetric(
          vertical: dimensions.spacingM2,
          horizontal: dimensions.spacingM3,
        ),
        child: CalendarDatePicker2(
          config: themeConfig.toInlineConfig(),
          value: getSelectedDates,
          onValueChanged: _onDateChanged,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDate = widget.config.initialStartDate;
    _endDate = widget.config.initialEndDate;
  }

  BoxDecoration _buildContainerDecoration(BuildContext context) {
    final (:colors, :dimensions, fonts: _) = context.resources;

    return BoxDecoration(
      color: colors.layer.primary,
      borderRadius: BorderRadius.circular(dimensions.radiusM1),
      boxShadow: [
        BoxShadow(
          color: colors.overlay.primary.withValues(alpha: 20),
          blurRadius: dimensions.spacingL2,
          offset: Offset(0, dimensions.spacingS2),
        ),
      ],
    );
  }

  List<DateTime?> _getSelectedDates() => widget.config.isMultiSelectionEnabled
      ? [_startDate, _endDate]
      : [_startDate];

  void _onDateChanged(List<DateTime?> dates) {
    if (widget.config.isMultiSelectionEnabled) {
      _handleMultiSelectionChange(dates);
    } else if (!widget.config.isMultiSelectionEnabled && dates.isNotEmpty) {
      _handleSingleSelectionChange(dates);
    }
  }

  void _handleMultiSelectionChange(List<DateTime?> dates) {
    final newStartDate = dates.isNotEmpty ? dates.first : null;
    final newEndDate = dates.length > 1 ? dates[1] : null;

    // Validate that end date is not earlier than start date.
    if (newStartDate != null && newEndDate == null) {
      setState(() {
        _startDate = newStartDate;
        _endDate = null;
      });
      widget.config.onDateRangeChanged?.call(_startDate, _endDate);
      return;
    }

    if (newStartDate != null && newEndDate != null) {
      DateTime finalStartDate;
      DateTime finalEndDate;

      if (newEndDate.isBefore(newStartDate)) {
        // Swap the dates so start date is always before end date.
        finalStartDate = newEndDate;
        finalEndDate = newStartDate;
      } else {
        finalStartDate = newStartDate;
        finalEndDate = newEndDate;
      }

      setState(() {
        _startDate = finalStartDate;
        _endDate = finalEndDate;
      });

      widget.config.onDateRangeChanged?.call(_startDate, _endDate);
    }
  }

  void _handleSingleSelectionChange(List<DateTime?> dates) {
    setState(() {
      _startDate = dates.first;
      _endDate = null;
    });

    widget.config.onDateRangeChanged?.call(_startDate, _endDate);
  }
}

/// Dialog widget to display the calendar date picker in a popup.
class _BhaktimartCalendarDatePickerDialog extends StatefulWidget {
  const _BhaktimartCalendarDatePickerDialog({required this.config});

  final BhaktimartCalendarConfig config;

  @override
  State<_BhaktimartCalendarDatePickerDialog> createState() =>
      _BhaktimartCalendarDatePickerDialogState();
}

class _BhaktimartCalendarDatePickerDialogState
    extends State<_BhaktimartCalendarDatePickerDialog> {
  late List<DateTime?> tempSelectedDates;

  @override
  Widget build(BuildContext context) {
    final themeConfig = BhaktimartCalendarThemeConfig(
      context: context,
      selectedDates: tempSelectedDates,
      isMultiSelectionEnabled: widget.config.isMultiSelectionEnabled,
      isPastDatesEnabled: widget.config.isPastDatesEnabled,
      minDate: widget.config.minDate,
      maxDate: widget.config.maxDate,
    );
    final okStyle = themeConfig.okButtonTextStyle;
    final cancelStyle = themeConfig.cancelButtonTextStyle;
    WidgetStateProperty.all(Colors.transparent);
    final alertDialogWidth = 350.0;
    final dimensions = context.resources.dimensions;
    final spacingM1 = dimensions.spacingM1;

    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            splashFactory: NoSplash.splashFactory,
          ),
        ),
      ),
      child: AlertDialog(
        contentPadding: EdgeInsets.only(bottom: dimensions.spacingM2),
        actionsPadding: EdgeInsets.only(
          left: spacingM1,
          right: spacingM1,
          bottom: dimensions.spacingS2,
        ),
        content: SizedBox(
          width: alertDialogWidth,
          child: CalendarDatePicker2(
            config: themeConfig.toDialogConfig(),
            value: tempSelectedDates,
            onValueChanged: (dates) {
              setState(() {
                tempSelectedDates = dates;
              });
            },
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BhaktimartButton.secondaryExtraSmall(
                context,
                onPressed: () => Navigator.of(context).pop(),
                width: null,
                child: Text(
                  widget.config.cancelText ?? 'CANCEL',
                  style: cancelStyle,
                ),
              ),
              SizedBox(width: dimensions.spacingM1),
              BhaktimartButton.primaryExtraSmall(
                context,
                onPressed: () => Navigator.of(context).pop(tempSelectedDates),
                width: null,
                child: Text(widget.config.okText ?? 'OK', style: okStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    final initialStartDate = widget.config.initialStartDate;
    tempSelectedDates = widget.config.isMultiSelectionEnabled
        ? [initialStartDate, widget.config.initialEndDate]
        : [initialStartDate];
  }
}
