part of azure_devops_sdk.api;

class DemandExists {
  /* The name of the capability referenced by the demand. */
  String name = null;
  /* The demanded value. */
  String value = null;
  DemandExists();

  @override
  String toString() {
    return 'DemandExists[name=$name, value=$value, ]';
  }

  DemandExists.fromJson(Map<String, dynamic> json) {
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

  static List<DemandExists> listFromJson(List<dynamic> json) {
    return json == null ? List<DemandExists>() : json.map((value) => DemandExists.fromJson(value)).toList();
  }

  static Map<String, DemandExists> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DemandExists>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DemandExists.fromJson(value));
    }
    return map;
  }
}

