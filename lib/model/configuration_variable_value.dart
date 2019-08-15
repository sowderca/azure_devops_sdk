part of azure_devops_sdk.api;

class ConfigurationVariableValue {
  /* Gets and sets if a variable can be overridden at deployment time or not. */
  bool allowOverride = null;
  /* Gets or sets as variable is secret or not. */
  bool isSecret = null;
  /* Gets and sets value of the configuration variable. */
  String value = null;
  ConfigurationVariableValue();

  @override
  String toString() {
    return 'ConfigurationVariableValue[allowOverride=$allowOverride, isSecret=$isSecret, value=$value, ]';
  }

  ConfigurationVariableValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowOverride'] == null) {
      allowOverride = null;
    } else {
          allowOverride = json['allowOverride'];
    }
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
    if (allowOverride != null)
      json['allowOverride'] = allowOverride;
    if (isSecret != null)
      json['isSecret'] = isSecret;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ConfigurationVariableValue> listFromJson(List<dynamic> json) {
    return json == null ? List<ConfigurationVariableValue>() : json.map((value) => ConfigurationVariableValue.fromJson(value)).toList();
  }

  static Map<String, ConfigurationVariableValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ConfigurationVariableValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ConfigurationVariableValue.fromJson(value));
    }
    return map;
  }
}

