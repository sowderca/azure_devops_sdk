part of azure_devops_sdk.api;

class ReleaseStartEnvironmentMetadata {
  /* Sets release definition environment id. */
  int definitionEnvironmentId = null;
  /* Sets list of environments variables to be overridden at deployment time. */
  Map<String, ConfigurationVariableValue> variables = {};
  ReleaseStartEnvironmentMetadata();

  @override
  String toString() {
    return 'ReleaseStartEnvironmentMetadata[definitionEnvironmentId=$definitionEnvironmentId, variables=$variables, ]';
  }

  ReleaseStartEnvironmentMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionEnvironmentId'] == null) {
      definitionEnvironmentId = null;
    } else {
          definitionEnvironmentId = json['definitionEnvironmentId'];
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionEnvironmentId != null)
      json['definitionEnvironmentId'] = definitionEnvironmentId;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<ReleaseStartEnvironmentMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseStartEnvironmentMetadata>() : json.map((value) => ReleaseStartEnvironmentMetadata.fromJson(value)).toList();
  }

  static Map<String, ReleaseStartEnvironmentMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseStartEnvironmentMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseStartEnvironmentMetadata.fromJson(value));
    }
    return map;
  }
}

