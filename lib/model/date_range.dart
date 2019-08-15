part of azure_devops_sdk.api;

class DateRange {
  /* End of the date range. */
  DateTime end = null;
  /* Start of the date range. */
  DateTime start = null;
  DateRange();

  @override
  String toString() {
    return 'DateRange[end=$end, start=$start, ]';
  }

  DateRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['end'] == null) {
      end = null;
    } else {
      end = DateTime.parse(json['end']);
    }
    if (json['start'] == null) {
      start = null;
    } else {
      start = DateTime.parse(json['start']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (end != null)
      json['end'] = end == null ? null : end.toUtc().toIso8601String();
    if (start != null)
      json['start'] = start == null ? null : start.toUtc().toIso8601String();
    return json;
  }

  static List<DateRange> listFromJson(List<dynamic> json) {
    return json == null ? List<DateRange>() : json.map((value) => DateRange.fromJson(value)).toList();
  }

  static Map<String, DateRange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DateRange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DateRange.fromJson(value));
    }
    return map;
  }
}

