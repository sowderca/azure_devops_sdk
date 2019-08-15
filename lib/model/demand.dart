part of azure_devops_sdk.api;

class Demand {
  /* The name of the capability referenced by the demand. */
  String name = null;
  /* The demanded value. */
  String value = null;
  Demand();

  @override
  String toString() {
    return 'Demand[name=$name, value=$value, ]';
  }

  Demand.fromJson(Map<String, dynamic> json) {
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

  static List<Demand> listFromJson(List<dynamic> json) {
    return json == null ? List<Demand>() : json.map((value) => Demand.fromJson(value)).toList();
  }

  static Map<String, Demand> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Demand>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Demand.fromJson(value));
    }
    return map;
  }
}

