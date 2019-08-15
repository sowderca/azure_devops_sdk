part of azure_devops_sdk.api;

class DefinitionEnvironmentReference {
  /* Definition environment ID. */
  int definitionEnvironmentId = null;
  /* Definition environment name. */
  String definitionEnvironmentName = null;
  /* ReleaseDefinition ID. */
  int releaseDefinitionId = null;
  /* ReleaseDefinition name. */
  String releaseDefinitionName = null;
  DefinitionEnvironmentReference();

  @override
  String toString() {
    return 'DefinitionEnvironmentReference[definitionEnvironmentId=$definitionEnvironmentId, definitionEnvironmentName=$definitionEnvironmentName, releaseDefinitionId=$releaseDefinitionId, releaseDefinitionName=$releaseDefinitionName, ]';
  }

  DefinitionEnvironmentReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionEnvironmentId'] == null) {
      definitionEnvironmentId = null;
    } else {
          definitionEnvironmentId = json['definitionEnvironmentId'];
    }
    if (json['definitionEnvironmentName'] == null) {
      definitionEnvironmentName = null;
    } else {
          definitionEnvironmentName = json['definitionEnvironmentName'];
    }
    if (json['releaseDefinitionId'] == null) {
      releaseDefinitionId = null;
    } else {
          releaseDefinitionId = json['releaseDefinitionId'];
    }
    if (json['releaseDefinitionName'] == null) {
      releaseDefinitionName = null;
    } else {
          releaseDefinitionName = json['releaseDefinitionName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionEnvironmentId != null)
      json['definitionEnvironmentId'] = definitionEnvironmentId;
    if (definitionEnvironmentName != null)
      json['definitionEnvironmentName'] = definitionEnvironmentName;
    if (releaseDefinitionId != null)
      json['releaseDefinitionId'] = releaseDefinitionId;
    if (releaseDefinitionName != null)
      json['releaseDefinitionName'] = releaseDefinitionName;
    return json;
  }

  static List<DefinitionEnvironmentReference> listFromJson(List<dynamic> json) {
    return json == null ? List<DefinitionEnvironmentReference>() : json.map((value) => DefinitionEnvironmentReference.fromJson(value)).toList();
  }

  static Map<String, DefinitionEnvironmentReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DefinitionEnvironmentReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DefinitionEnvironmentReference.fromJson(value));
    }
    return map;
  }
}

