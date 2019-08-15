part of azure_devops_sdk.api;

class ReleaseReference {
  /* Number of Release Attempt. */
  int attempt = null;
  /* Release Creation Date. */
  DateTime creationDate = null;
  /* Release definition ID. */
  int definitionId = null;
  /* Environment creation Date. */
  DateTime environmentCreationDate = null;
  /* Release environment definition ID. */
  int environmentDefinitionId = null;
  /* Release environment definition name. */
  String environmentDefinitionName = null;
  /* Release environment ID. */
  int environmentId = null;
  /* Release environment name. */
  String environmentName = null;
  /* Release ID. */
  int id = null;
  /* Release name. */
  String name = null;
  ReleaseReference();

  @override
  String toString() {
    return 'ReleaseReference[attempt=$attempt, creationDate=$creationDate, definitionId=$definitionId, environmentCreationDate=$environmentCreationDate, environmentDefinitionId=$environmentDefinitionId, environmentDefinitionName=$environmentDefinitionName, environmentId=$environmentId, environmentName=$environmentName, id=$id, name=$name, ]';
  }

  ReleaseReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['environmentCreationDate'] == null) {
      environmentCreationDate = null;
    } else {
      environmentCreationDate = DateTime.parse(json['environmentCreationDate']);
    }
    if (json['environmentDefinitionId'] == null) {
      environmentDefinitionId = null;
    } else {
          environmentDefinitionId = json['environmentDefinitionId'];
    }
    if (json['environmentDefinitionName'] == null) {
      environmentDefinitionName = null;
    } else {
          environmentDefinitionName = json['environmentDefinitionName'];
    }
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['environmentName'] == null) {
      environmentName = null;
    } else {
          environmentName = json['environmentName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (environmentCreationDate != null)
      json['environmentCreationDate'] = environmentCreationDate == null ? null : environmentCreationDate.toUtc().toIso8601String();
    if (environmentDefinitionId != null)
      json['environmentDefinitionId'] = environmentDefinitionId;
    if (environmentDefinitionName != null)
      json['environmentDefinitionName'] = environmentDefinitionName;
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (environmentName != null)
      json['environmentName'] = environmentName;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ReleaseReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseReference>() : json.map((value) => ReleaseReference.fromJson(value)).toList();
  }

  static Map<String, ReleaseReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseReference.fromJson(value));
    }
    return map;
  }
}

