part of azure_devops_sdk.api;

class DemandMinimumVersion {
  /* The name of the capability referenced by the demand. */
  String name = null;
  /* The demanded value. */
  String value = null;
  DemandMinimumVersion();

  @override
  String toString() {
    return 'DemandMinimumVersion[name=$name, value=$value, ]';
  }

  DemandMinimumVersion.fromJson(Map<String, dynamic> json) {
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

  static List<DemandMinimumVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<DemandMinimumVersion>() : json.map((value) => DemandMinimumVersion.fromJson(value)).toList();
  }

  static Map<String, DemandMinimumVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DemandMinimumVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DemandMinimumVersion.fromJson(value));
    }
    return map;
  }
}

