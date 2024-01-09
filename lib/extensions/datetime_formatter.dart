import 'package:intl/intl.dart';

extension DateTimeFormater on DateTime {
  String format(String pattern) => DateFormat(pattern).format(this);
}
