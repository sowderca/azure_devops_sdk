part of azure_devops_sdk.api;

class BuildDefinitionVariable {
  /* Indicates whether the value can be set at queue time. */
  bool allowOverride = null;
  /* Indicates whether the variable's value is a secret. */
  bool isSecret = null;
  /* The value of the variable. */
  String value = null;
  BuildDefinitionVariable();

  @override
  String toString() {
    return 'BuildDefinitionVariable[allowOverride=$allowOverride, isSecret=$isSecret, value=$value, ]';
  }

  BuildDefinitionVariable.fromJson(Map<String, dynamic> json) {
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

  static List<BuildDefinitionVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinitionVariable>() : json.map((value) => BuildDefinitionVariable.fromJson(value)).toList();
  }

  static Map<String, BuildDefinitionVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinitionVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinitionVariable.fromJson(value));
    }
    return map;
  }
}

