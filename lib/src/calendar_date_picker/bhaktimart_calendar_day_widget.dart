import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

/// Custom Day Widget for rendering each individual day cell in the calendar.
class BhaktimartCalendarDayWidget extends StatelessWidget {
  const BhaktimartCalendarDayWidget({
    required this.date,
    required this.selectedDates,
    this.isDisabled,
    this.isToday,
    this.isSelected,
    super.key,
  });

  final DateTime date;
  final List<DateTime?> selectedDates;
  final bool? isDisabled;
  final bool? isToday;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    final dayState = _calculateDayState();
    final dayStyle = _calculateDayStyle(context, dayState);

    return IgnorePointer(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: _DayContainer(date: date, style: dayStyle),
        ),
      ),
    );
  }

  _DayState _calculateDayState() {
    final startDate = selectedDates.isNotEmpty ? selectedDates.first : null;
    final endDate = selectedDates.length > 1 ? selectedDates[1] : null;

    var isRangeStart = false;
    var isRangeEnd = false;
    var isInRange = false;

    if (startDate != null && endDate != null) {
      isRangeStart = _isSameDay(date, startDate);
      isRangeEnd = _isSameDay(date, endDate);
      isInRange =
          date.isAfter(startDate.subtract(const Duration(days: 1))) &&
          date.isBefore(endDate.add(const Duration(days: 1)));
    }

    return _DayState(
      isStartOrEnd: isRangeStart || isRangeEnd,
      isRange: isInRange && !isRangeStart && !isRangeEnd,
    );
  }

  _DayStyle _calculateDayStyle(BuildContext context, _DayState dayState) {
    final styleFactory = _DayStyleFactory(context);

    if (isDisabled ?? false) {
      return styleFactory.disabled();
    }
    if (isSelected ?? false) {
      return styleFactory.startOrEnd();
    }

    if (dayState.isStartOrEnd) {
      return styleFactory.startOrEnd();
    }
    if (dayState.isRange) {
      return styleFactory.range();
    }
    return (isToday ?? false)
        ? styleFactory.today()
        : styleFactory.defaultStyle();
  }

  bool _isSameDay(DateTime date1, DateTime date2) =>
      date1.year == date2.year &&
      date1.month == date2.month &&
      date1.day == date2.day;
}

/// Day widget container that displays the day number with appropriate styling.
class _DayContainer extends StatelessWidget {
  const _DayContainer({required this.date, required this.style});

  final DateTime date;
  final _DayStyle style;

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    final pillSize = dimensions.spacingL2;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: pillSize,
          height: pillSize,
          decoration: BoxDecoration(
            color: style.backgroundColor,
            border: style.border,
            borderRadius: style.borderRadius,
          ),
          child: Center(
            child: Text(
              '${date.day}',
              style: style.textStyle.copyWith(color: style.textColor),
            ),
          ),
        ),
      ),
    );
  }
}

/// Factory for creating day styles based on the day state and context.
class _DayStyleFactory {
  const _DayStyleFactory(this.context);

  final BuildContext context;
  BhaktimartColors get _colors => context.colors;
  FontResources get _fonts => context.fonts;
  DimensionResources get _dimensions => context.dimensions;

  _DayStyle disabled() => _DayStyle(
    backgroundColor: null,
    textColor: _colors.on.layerPrimary.tertiary,
    textStyle: _fonts.labelM,
    borderRadius: BorderRadius.circular(_dimensions.radiusS1),
  );

  _DayStyle startOrEnd() => _DayStyle(
    backgroundColor: _colors.background.brand,
    textColor: _colors.on.button.primary,
    textStyle: _fonts.labelM.semiBold,
    borderRadius: BorderRadius.circular(_dimensions.radiusL1),
  );

  _DayStyle range() => _DayStyle(
    backgroundColor: _colors.background.brand.withValues(alpha: 0.15),
    textColor: _colors.on.button.primary,
    textStyle: _fonts.labelM.semiBold,
    borderRadius: BorderRadius.circular(_dimensions.radiusL1),
  );

  _DayStyle today() => _DayStyle(
    backgroundColor: null,
    textColor: _colors.on.backgroundPrimary.brand,
    textStyle: _fonts.labelM.semiBold,
    border: Border.all(color: _colors.on.backgroundPrimary.brand, width: 2),
    borderRadius: BorderRadius.circular(_dimensions.radiusL1),
  );

  _DayStyle defaultStyle() => _DayStyle(
    backgroundColor: _colors.layer.primary,
    textColor: _colors.on.layerPrimary.primary,
    textStyle: _fonts.labelM,
    borderRadius: BorderRadius.circular(_dimensions.radiusS1),
  );
}

/// Helper classes for day state and styling logic.
class _DayState {
  const _DayState({required this.isStartOrEnd, required this.isRange});

  final bool isStartOrEnd;
  final bool isRange;
}

class _DayStyle {
  const _DayStyle({
    required this.backgroundColor,
    required this.textColor,
    required this.textStyle,
    required this.borderRadius,
    this.border,
  });

  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle textStyle;
  final BoxBorder? border;
  final BorderRadius borderRadius;
}
