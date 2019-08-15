part of azure_devops_sdk.api;

class NameValuePair {
  /* Name */
  String name = null;
  /* Value */
  String value = null;
  NameValuePair();

  @override
  String toString() {
    return 'NameValuePair[name=$name, value=$value, ]';
  }

  NameValuePair.fromJson(Map<String, dynamic> json) {
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

  static List<NameValuePair> listFromJson(List<dynamic> json) {
    return json == null ? List<NameValuePair>() : json.map((value) => NameValuePair.fromJson(value)).toList();
  }

  static Map<String, NameValuePair> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NameValuePair>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NameValuePair.fromJson(value));
    }
    return map;
  }
}

