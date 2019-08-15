part of azure_devops_sdk.api;

class BuildMetric {
  /* The date for the scope. */
  DateTime date = null;
  /* The value. */
  int intValue = null;
  /* The name of the metric. */
  String name = null;
  /* The scope. */
  String scope = null;
  BuildMetric();

  @override
  String toString() {
    return 'BuildMetric[date=$date, intValue=$intValue, name=$name, scope=$scope, ]';
  }

  BuildMetric.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['intValue'] == null) {
      intValue = null;
    } else {
          intValue = json['intValue'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (intValue != null)
      json['intValue'] = intValue;
    if (name != null)
      json['name'] = name;
    if (scope != null)
      json['scope'] = scope;
    return json;
  }

  static List<BuildMetric> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildMetric>() : json.map((value) => BuildMetric.fromJson(value)).toList();
  }

  static Map<String, BuildMetric> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildMetric>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildMetric.fromJson(value));
    }
    return map;
  }
}

