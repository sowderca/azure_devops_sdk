part of azure_devops_sdk.api;

class Parameter {
  
  bool isSecret = null;
  
  String value = null;
  Parameter();

  @override
  String toString() {
    return 'Parameter[isSecret=$isSecret, value=$value, ]';
  }

  Parameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isSecret'] == null) {
      isSecret = null;
    } else {
          isSecret = json['isSecret'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSecret != null)
      json['isSecret'] = isSecret;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<Parameter> listFromJson(List<dynamic> json) {
    return json == null ? List<Parameter>() : json.map((value) => Parameter.fromJson(value)).toList();
  }

  static Map<String, Parameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Parameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Parameter.fromJson(value));
    }
    return map;
  }
}

