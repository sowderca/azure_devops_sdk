part of azure_devops_sdk.api;

class ReleaseEnvironmentDefinitionReference {
  /* ID of the release definition that contains the release environment definition. */
  int definitionId = null;
  /* ID of the release environment definition. */
  int environmentDefinitionId = null;
  ReleaseEnvironmentDefinitionReference();

  @override
  String toString() {
    return 'ReleaseEnvironmentDefinitionReference[definitionId=$definitionId, environmentDefinitionId=$environmentDefinitionId, ]';
  }

  ReleaseEnvironmentDefinitionReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['environmentDefinitionId'] == null) {
      environmentDefinitionId = null;
    } else {
          environmentDefinitionId = json['environmentDefinitionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (environmentDefinitionId != null)
      json['environmentDefinitionId'] = environmentDefinitionId;
    return json;
  }

  static List<ReleaseEnvironmentDefinitionReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironmentDefinitionReference>() : json.map((value) => ReleaseEnvironmentDefinitionReference.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironmentDefinitionReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironmentDefinitionReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironmentDefinitionReference.fromJson(value));
    }
    return map;
  }
}

