part of azure_devops_sdk.api;

class DemandEquals {
  /* The name of the capability referenced by the demand. */
  String name = null;
  /* The demanded value. */
  String value = null;
  DemandEquals();

  @override
  String toString() {
    return 'DemandEquals[name=$name, value=$value, ]';
  }

  DemandEquals.fromJson(Map<String, dynamic> json) {
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

  static List<DemandEquals> listFromJson(List<dynamic> json) {
    return json == null ? List<DemandEquals>() : json.map((value) => DemandEquals.fromJson(value)).toList();
  }

  static Map<String, DemandEquals> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DemandEquals>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DemandEquals.fromJson(value));
    }
    return map;
  }
}

