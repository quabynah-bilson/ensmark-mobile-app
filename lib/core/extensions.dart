import 'package:intl/intl.dart';

import 'constants.dart';

extension DateTimeX on DateTime {
  String get formatted => DateFormat(AppConstants.preferredDatePattern).format(this);
}
