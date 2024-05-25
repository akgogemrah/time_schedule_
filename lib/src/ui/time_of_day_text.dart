import 'package:day_schedule_list/src/models/schedule_time_of_day.dart';
import 'package:flutter/material.dart';


class TimeOfDayText extends Text {
  TimeOfDayText({
    required TimeOfDay time,
    required BuildContext context,
    TimeOfDayAvailability availability = TimeOfDayAvailability.available,
    Color? color,
    Key? key,
  }) : super(
          time.format(context),
          style: color != null
              ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: color,
                  )
              : (availability == TimeOfDayAvailability.available
                  ? Theme.of(context).textTheme.bodyMedium
                  : Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey.shade400,
                      )),
          key: key,
        );
}
