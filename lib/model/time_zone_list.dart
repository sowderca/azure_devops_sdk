part of azure_devops_sdk.api;

class TimeZoneList {
  
  TimeZone utcTimeZone = null;
  /* List of valid timezones. */
  List<TimeZone> validTimeZones = [];
  TimeZoneList();

  @override
  String toString() {
    return 'TimeZoneList[utcTimeZone=$utcTimeZone, validTimeZones=$validTimeZones, ]';
  }

  TimeZoneList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['utcTimeZone'] == null) {
      utcTimeZone = null;
    } else {
      utcTimeZone = TimeZone.fromJson(json['utcTimeZone']);
    }
    if (json['validTimeZones'] == null) {
      validTimeZones = null;
    } else {
      validTimeZones = TimeZone.listFromJson(json['validTimeZones']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (utcTimeZone != null)
      json['utcTimeZone'] = utcTimeZone;
    if (validTimeZones != null)
      json['validTimeZones'] = validTimeZones;
    return json;
  }

  static List<TimeZoneList> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeZoneList>() : json.map((value) => TimeZoneList.fromJson(value)).toList();
  }

  static Map<String, TimeZoneList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeZoneList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeZoneList.fromJson(value));
    }
    return map;
  }
}

