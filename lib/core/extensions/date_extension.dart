import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get monthName {
    return DateFormat.MMM().format(this);
  }
}
