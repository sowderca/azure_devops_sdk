part of azure_devops_sdk.api;

class TeamFieldValue {
  
  bool includeChildren = null;
  
  String value = null;
  TeamFieldValue();

  @override
  String toString() {
    return 'TeamFieldValue[includeChildren=$includeChildren, value=$value, ]';
  }

  TeamFieldValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeChildren'] == null) {
      includeChildren = null;
    } else {
          includeChildren = json['includeChildren'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeChildren != null)
      json['includeChildren'] = includeChildren;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TeamFieldValue> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamFieldValue>() : json.map((value) => TeamFieldValue.fromJson(value)).toList();
  }

  static Map<String, TeamFieldValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamFieldValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamFieldValue.fromJson(value));
    }
    return map;
  }
}

