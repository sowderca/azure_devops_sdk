part of azure_devops_sdk.api;

class VariableValue {
  /* Gets or sets as the variable is secret or not. */
  bool isSecret = null;
  /* Gets or sets the value. */
  String value = null;
  VariableValue();

  @override
  String toString() {
    return 'VariableValue[isSecret=$isSecret, value=$value, ]';
  }

  VariableValue.fromJson(Map<String, dynamic> json) {
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

  static List<VariableValue> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableValue>() : json.map((value) => VariableValue.fromJson(value)).toList();
  }

  static Map<String, VariableValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableValue.fromJson(value));
    }
    return map;
  }
}

