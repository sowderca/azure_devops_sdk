part of azure_devops_sdk.api;

class TimeZone {
  /* Display name of the time zone. */
  String displayName = null;
  /* Id of the time zone. */
  String id = null;
  TimeZone();

  @override
  String toString() {
    return 'TimeZone[displayName=$displayName, id=$id, ]';
  }

  TimeZone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<TimeZone> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeZone>() : json.map((value) => TimeZone.fromJson(value)).toList();
  }

  static Map<String, TimeZone> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeZone>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeZone.fromJson(value));
    }
    return map;
  }
}

