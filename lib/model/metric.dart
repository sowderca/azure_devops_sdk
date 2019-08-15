part of azure_devops_sdk.api;

class Metric {
  /* Name of the Metric. */
  String name = null;
  /* Value of the Metric. */
  int value = null;
  Metric();

  @override
  String toString() {
    return 'Metric[name=$name, value=$value, ]';
  }

  Metric.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<Metric> listFromJson(List<dynamic> json) {
    return json == null ? List<Metric>() : json.map((value) => Metric.fromJson(value)).toList();
  }

  static Map<String, Metric> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Metric>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Metric.fromJson(value));
    }
    return map;
  }
}

