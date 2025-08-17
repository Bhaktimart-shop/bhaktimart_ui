import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/calendar_date_picker/bhaktimart_calendar_day_widget.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class BhaktimartCalendarThemeConfig {
  BhaktimartCalendarThemeConfig({
    required BuildContext context,
    required List<DateTime?> selectedDates,
    required bool isMultiSelectionEnabled,
    required bool isPastDatesEnabled,
    DateTime? minDate,
    DateTime? maxDate,
  }) : calendarType = isMultiSelectionEnabled
           ? CalendarDatePicker2Type.range
           : CalendarDatePicker2Type.single,
       currentDate = DateTime.now(),
       firstDate =
           minDate ??
           (isPastDatesEnabled
               ? null
               : DateTime(
                   DateTime.now().year,
                   DateTime.now().month,
                   DateTime.now().day,
                 )),
       lastDate = maxDate,
       calendarViewMode = CalendarDatePicker2Mode.day,
       _selectedDates = selectedDates {
    final (:colors, :dimensions, :fonts) = context.resources;
    final onLayerPrimary = colors.on.layerPrimary;
    final onButton = colors.on.button;
    final onBackgroundPrimary = colors.on.backgroundPrimary;
    final labelM = fonts.labelM;
    final labelL = fonts.labelL;
    final actionButtonCaptionM = fonts.captionM.semiBold;

    dayTextStyle = labelM.copyWith(color: onLayerPrimary.primary);
    selectedDayTextStyle = labelM.semiBold.copyWith(color: onButton.primary);
    selectedDayHighlightColor = onBackgroundPrimary.brand;
    todayTextStyle = labelM.semiBold.copyWith(color: onBackgroundPrimary.brand);
    disabledDayTextStyle = labelM.copyWith(color: onLayerPrimary.tertiary);
    disabledYearTextStyle = labelM.copyWith(color: onLayerPrimary.tertiary);
    disabledMonthTextStyle = labelM.copyWith(color: onLayerPrimary.tertiary);
    weekdayLabelTextStyle = labelM.semiBold.copyWith(
      color: onBackgroundPrimary.brand,
    );
    controlsTextStyle = labelL.semiBold.copyWith(color: onLayerPrimary.primary);
    controlsHeight = dimensions.spacingL4;
    dayBorderRadius = BorderRadius.circular(dimensions.radiusL1);
    yearTextStyle = labelL.copyWith(color: onLayerPrimary.primary);
    selectedYearTextStyle = labelL.semiBold.copyWith(color: onButton.primary);
    yearBorderRadius = BorderRadius.circular(dimensions.radiusS1);
    hasCenterAlignModePicker = true;
    hasDynamicCalendarRows = true;
    modePickersGap = dimensions.spacingXS1;
    okButtonTextStyle = actionButtonCaptionM.copyWith(color: onButton.primary);
    cancelButtonTextStyle = actionButtonCaptionM.copyWith(
      color: onButton.secondary,
    );
    dayBuilder =
        ({
          required date,
          decoration,
          isDisabled,
          isSelected,
          isToday,
          textStyle,
        }) => BhaktimartCalendarDayWidget(
          date: date,
          selectedDates: _selectedDates,
          isDisabled: isDisabled,
          isToday: isToday,
          isSelected: isSelected,
        );
  }

  final CalendarDatePicker2Type calendarType;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? currentDate;
  final CalendarDatePicker2Mode calendarViewMode;
  late final TextStyle dayTextStyle;

  late final TextStyle selectedDayTextStyle;
  late final Color selectedDayHighlightColor;
  late final TextStyle todayTextStyle;
  late final TextStyle disabledDayTextStyle;
  late final TextStyle disabledYearTextStyle;
  late final TextStyle disabledMonthTextStyle;
  late final TextStyle weekdayLabelTextStyle;
  late final TextStyle controlsTextStyle;
  late final double controlsHeight;
  late final BorderRadius dayBorderRadius;
  late final TextStyle yearTextStyle;
  late final TextStyle selectedYearTextStyle;
  late final BorderRadius yearBorderRadius;
  late final bool hasCenterAlignModePicker;
  late final bool hasDynamicCalendarRows;
  late final double modePickersGap;
  late final Widget Function({
    required DateTime date,
    BoxDecoration? decoration,
    bool? isDisabled,
    bool? isSelected,
    bool? isToday,
    TextStyle? textStyle,
  })?
  dayBuilder;

  late final TextStyle okButtonTextStyle;
  late final TextStyle cancelButtonTextStyle;
  final List<DateTime?> _selectedDates;

  CalendarDatePicker2Config toInlineConfig() => CalendarDatePicker2Config(
    calendarType: calendarType,
    firstDate: firstDate,
    lastDate: lastDate,
    currentDate: currentDate,
    calendarViewMode: calendarViewMode,
    dayTextStyle: dayTextStyle,
    selectedDayTextStyle: selectedDayTextStyle,
    selectedDayHighlightColor: selectedDayHighlightColor,
    todayTextStyle: todayTextStyle,
    disabledDayTextStyle: disabledDayTextStyle,
    disabledYearTextStyle: disabledYearTextStyle,
    disabledMonthTextStyle: disabledMonthTextStyle,
    weekdayLabelTextStyle: weekdayLabelTextStyle,
    controlsTextStyle: controlsTextStyle,
    controlsHeight: controlsHeight,
    dayBorderRadius: dayBorderRadius,
    yearTextStyle: yearTextStyle,
    selectedYearTextStyle: selectedYearTextStyle,
    yearBorderRadius: yearBorderRadius,
    centerAlignModePicker: hasCenterAlignModePicker,
    dynamicCalendarRows: hasDynamicCalendarRows,
    modePickersGap: modePickersGap,
    dayBuilder: dayBuilder,
  );

  CalendarDatePicker2WithActionButtonsConfig toDialogConfig() =>
      CalendarDatePicker2WithActionButtonsConfig(
        calendarType: calendarType,
        firstDate: firstDate,
        lastDate: lastDate,
        currentDate: currentDate,
        calendarViewMode: calendarViewMode,
        daySplashColor: Colors.transparent,
        dayTextStyle: dayTextStyle,
        selectedDayTextStyle: selectedDayTextStyle,
        selectedDayHighlightColor: selectedDayHighlightColor,
        todayTextStyle: todayTextStyle,
        disabledDayTextStyle: disabledDayTextStyle,
        disabledYearTextStyle: disabledYearTextStyle,
        disabledMonthTextStyle: disabledMonthTextStyle,
        weekdayLabelTextStyle: weekdayLabelTextStyle,
        controlsTextStyle: controlsTextStyle,
        controlsHeight: controlsHeight,
        dayBorderRadius: dayBorderRadius,
        yearTextStyle: yearTextStyle,
        selectedYearTextStyle: selectedYearTextStyle,
        yearBorderRadius: yearBorderRadius,
        centerAlignModePicker: hasCenterAlignModePicker,
        dynamicCalendarRows: hasDynamicCalendarRows,
        modePickersGap: modePickersGap,
        dayBuilder: dayBuilder,
        okButtonTextStyle: okButtonTextStyle,
        cancelButtonTextStyle: cancelButtonTextStyle,
      );
}
