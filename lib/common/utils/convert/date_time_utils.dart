import 'package:intl/intl.dart';

enum Pattern {
  hhmm,
  hhmmss,
  ddmmm,
  md,
  hhMMddMMyyyy,
  ddMMMMyyyyHHmm,
  ddMMyyyyHHmm,
  ddMMyyyyHHmmss,
  yyyyMMddHHmm,
  yyyyMMddHHmmWithSeparator,
  yyyyMMdd,
  yyyyMMddHHmmss,
  yyyyMMddWithSeparator,
  yyyyMMddHHmmssWithSeparator,
  yyyyMM,
  ddMMyyyy,
}

extension PatternExtension on Pattern {
  String get pattern {
    switch (this) {
      case Pattern.hhmm:
        return 'HH:mm';
      case Pattern.hhmmss:
        return 'HH:mm:ss';
      case Pattern.ddmmm:
        return 'dd MMM';
      case Pattern.md:
        return 'M/d';
      case Pattern.ddMMyyyyHHmm:
        return 'dd/MM/yyyy HH:mm';
      case Pattern.ddMMMMyyyyHHmm:
        return 'dd/MMMM/yyyy HH:mm';
      case Pattern.hhMMddMMyyyy:
        return 'HH:mm - dd/MM/yyyy';
      case Pattern.ddMMyyyyHHmmss:
        return 'dd/MM/yyyy HH:mm:ss';
      case Pattern.yyyyMMddHHmm:
        return 'yyyy/MM/dd HH:mm';
      case Pattern.yyyyMMddHHmmWithSeparator:
        return 'yyyy-MM-dd HH:mm';
      case Pattern.yyyyMMddHHmmss:
        return 'yyyy-MM-dd HH:mm:ss';
      case Pattern.ddMMyyyy:
        return 'dd/MM/yyyy';
      case Pattern.yyyyMMdd:
        return 'yyyy/MM/dd';
      case Pattern.yyyyMMddWithSeparator:
        return 'yyyy-MM-dd';
      case Pattern.yyyyMMddHHmmssWithSeparator:
        return 'yyyy-MM-dd HH:mm:ss';
      default:
        return '';
    }
  }
}

const secondMillis = 1000;
const minuteMillis = 60 * secondMillis;
const hourMillis = 60 * minuteMillis;
const dayMillis = 24 * hourMillis;
const weekMillis = 7 * dayMillis;
const minuteSecond = 60;
const hourSecond = 60 * minuteSecond;
const monthMillis = 31 * dayMillis;
const quarterMillis = 3 * monthMillis;

DateTime? getDateTime(dynamic dateToConvert, {Pattern? pattern}) {
  if (dateToConvert is int) {
    return DateTime.fromMillisecondsSinceEpoch(dateToConvert);
  } else if (dateToConvert is String) {
    return DateFormat(pattern!.pattern).parse(dateToConvert);
  }
  return null;
}

String getStringDate(
  dynamic dateToConvert,
  Pattern pattern, {
  String? languageCode,
}) {
  if (dateToConvert == null) {
    return '';
  }

  final dateFormat = DateFormat(pattern.pattern, languageCode);
  if (dateToConvert is int) {
    final datetime = getDateTime(dateToConvert);
    return dateFormat.format(datetime!);
  } else if (dateToConvert is DateTime) {
    return dateFormat.format(dateToConvert.toLocal());
  }
  return '';
}

bool isToday(DateTime date) {
  final now = DateTime.now();
  return DateTime(date.year, date.month, date.day)
          .difference(DateTime(now.year, now.month, now.day))
          .inDays ==
      0;
}

bool isWarning(dynamic time, Pattern patternConvert) {
  final datetime = getTimestamp(time, patternConvert);
  final diff = DateTime.now().millisecondsSinceEpoch - datetime;
  final week = diff ~/ weekMillis;
  return week > 1;
}

bool isTooLong(dynamic time, Pattern patternConvert) {
  final datetime = getTimestamp(time, patternConvert);
  final diff = DateTime.now().millisecondsSinceEpoch - datetime;
  final month = diff ~/ monthMillis;
  return month > 3;
}

String getStringTimeAgo(
  dynamic time,
  Pattern patternConvert, {
  String? languageCode,
}) {
  final datetime = getTimestamp(time, patternConvert);
  final diff = DateTime.now().millisecondsSinceEpoch - datetime;
  if (diff < minuteMillis) {
    return 'vừa xong';
  } else if (diff < 60 * minuteMillis) {
    final minute = diff ~/ minuteMillis;
    return '$minute ${Intl.plural(minute, one: 'phút', other: 'phút')}';
  } else if (diff < 24 * hourMillis) {
    final hour = diff ~/ hourMillis;
    return '$hour ${Intl.plural(hour, one: 'giờ', other: 'giờ')}';
  } else if (diff < weekMillis) {
    final day = (diff / dayMillis).round();
    return '$day ${Intl.plural(day, one: 'ngày', other: 'ngày')}';
  } else if (diff < monthMillis) {
    final week = diff ~/ weekMillis;
    return '$week ${Intl.plural(week, one: 'tuần', other: 'tuần')}';
  } else if (diff < quarterMillis) {
    final month = diff ~/ monthMillis;
    return '$month ${Intl.plural(month, one: 'tháng', other: 'tháng')}';
  }
  return getStringDate(datetime, patternConvert, languageCode: languageCode);
}

int getTimestamp(dynamic dateToConvert, Pattern pattern) {
  if (dateToConvert is DateTime) {
    return dateToConvert.millisecondsSinceEpoch;
  } else if (dateToConvert is String) {
    final dateFormat = DateFormat(pattern.pattern);
    return dateFormat.parse(dateToConvert).millisecondsSinceEpoch;
  }
  return 0;
}

DateTime? getDateFromDateAndTime({
  dynamic date,
  String? time,
  required Pattern pattern,
}) {
  if (date == null || time == null) {
    return null;
  }
  if (date is String) {
    return getDateTime('$date $time', pattern: pattern);
  } else if (date is DateTime) {
    return getDateTime(
      '${getStringDate(date, Pattern.yyyyMMddWithSeparator)} $time',
      pattern: Pattern.yyyyMMddHHmmss,
    );
  }
  return null;
}
