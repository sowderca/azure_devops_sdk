part of azure_devops_sdk.api;

class IgnoredGate {
  /* Gets the date on which gate is last ignored. */
  DateTime lastModifiedOn = null;
  /* Name of gate ignored. */
  String name = null;
  IgnoredGate();

  @override
  String toString() {
    return 'IgnoredGate[lastModifiedOn=$lastModifiedOn, name=$name, ]';
  }

  IgnoredGate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastModifiedOn'] == null) {
      lastModifiedOn = null;
    } else {
      lastModifiedOn = DateTime.parse(json['lastModifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastModifiedOn != null)
      json['lastModifiedOn'] = lastModifiedOn == null ? null : lastModifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<IgnoredGate> listFromJson(List<dynamic> json) {
    return json == null ? List<IgnoredGate>() : json.map((value) => IgnoredGate.fromJson(value)).toList();
  }

  static Map<String, IgnoredGate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IgnoredGate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IgnoredGate.fromJson(value));
    }
    return map;
  }
}

