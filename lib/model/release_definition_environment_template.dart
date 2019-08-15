part of azure_devops_sdk.api;

class ReleaseDefinitionEnvironmentTemplate {
  /* Indicates whether template can be deleted or not. */
  bool canDelete = null;
  /* Category of the ReleaseDefinition environment template. */
  String category = null;
  /* Description of the ReleaseDefinition environment template. */
  String description = null;
  
  ReleaseDefinitionEnvironment environment = null;
  /* ID of the task which used to display icon used for this template. */
  String iconTaskId = null;
  /* Icon uri of the template. */
  String iconUri = null;
  /* ID of the ReleaseDefinition environment template. */
  String id = null;
  /* Indicates whether template deleted or not. */
  bool isDeleted = null;
  /* Name of the ReleaseDefinition environment template. */
  String name = null;
  ReleaseDefinitionEnvironmentTemplate();

  @override
  String toString() {
    return 'ReleaseDefinitionEnvironmentTemplate[canDelete=$canDelete, category=$category, description=$description, environment=$environment, iconTaskId=$iconTaskId, iconUri=$iconUri, id=$id, isDeleted=$isDeleted, name=$name, ]';
  }

  ReleaseDefinitionEnvironmentTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['canDelete'] == null) {
      canDelete = null;
    } else {
          canDelete = json['canDelete'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['environment'] == null) {
      environment = null;
    } else {
      environment = ReleaseDefinitionEnvironment.fromJson(json['environment']);
    }
    if (json['iconTaskId'] == null) {
      iconTaskId = null;
    } else {
          iconTaskId = json['iconTaskId'];
    }
    if (json['iconUri'] == null) {
      iconUri = null;
    } else {
          iconUri = json['iconUri'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canDelete != null)
      json['canDelete'] = canDelete;
    if (category != null)
      json['category'] = category;
    if (description != null)
      json['description'] = description;
    if (environment != null)
      json['environment'] = environment;
    if (iconTaskId != null)
      json['iconTaskId'] = iconTaskId;
    if (iconUri != null)
      json['iconUri'] = iconUri;
    if (id != null)
      json['id'] = id;
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ReleaseDefinitionEnvironmentTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionEnvironmentTemplate>() : json.map((value) => ReleaseDefinitionEnvironmentTemplate.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionEnvironmentTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionEnvironmentTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionEnvironmentTemplate.fromJson(value));
    }
    return map;
  }
}

