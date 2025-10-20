import 'package:intl/intl.dart';

extension DataExtention on DateTime {
  String get viewMonthName{
    return DateFormat("MMM").format(this);
  }
  String get viewDayNumber{
    return day.toString();
  }
}

