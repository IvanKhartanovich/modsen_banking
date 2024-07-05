import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:go_router/go_router.dart';
import 'package:modsen_banking/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({required this.onTap, super.key});

  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: AppColors.calendarBackgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: CalendarCarousel(
          onDayPressed: (date, events) {
            onTap(date.toString());
            context.pop();
          },
          daysHaveCircularBorder: false,
          showOnlyCurrentMonthDate: false,
          weekFormat: false,
          height: 380.0,
          selectedDateTime: DateTime.now(),
          customGridViewPhysics: const NeverScrollableScrollPhysics(),
          markedDateShowIcon: true,
          headerMargin: EdgeInsets.zero,
          markedDateIconMaxShown: 2,
          selectedDayButtonColor: AppColors.zeroOpacityColor,
          selectedDayBorderColor: AppColors.zeroOpacityColor,
          markedDateMoreShowTotal: false,
          iconColor: Colors.white,
          minSelectedDate: DateTime(2000),
          maxSelectedDate: DateTime(2040),
          weekendTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          headerTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
          selectedDayTextStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          nextDaysTextStyle: const TextStyle(
            color: AppColors.calendarBackgroundColor,
          ),
          prevDaysTextStyle: const TextStyle(
            color: AppColors.calendarBackgroundColor,
          ),
          daysTextStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          weekdayTextStyle: const TextStyle(
            color: AppColors.calendarWeekdayColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
