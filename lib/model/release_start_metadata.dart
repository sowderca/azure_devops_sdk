part of azure_devops_sdk.api;

class ReleaseStartMetadata {
  /* Sets list of artifact to create a release. */
  List<ArtifactMetadata> artifacts = [];
  /* Sets definition Id to create a release. */
  int definitionId = null;
  /* Sets description to create a release. */
  String description = null;
  /* Sets list of environments meta data. */
  List<ReleaseStartEnvironmentMetadata> environmentsMetadata = [];
  /* Sets 'true' to create release in draft mode, 'false' otherwise. */
  bool isDraft = null;
  /* Sets list of environments to manual as condition. */
  List<String> manualEnvironments = [];
  
  PropertiesCollection properties = null;
  /* Sets reason to create a release. */
  String reason = null;
  //enum reasonEnum {  none,  manual,  continuousIntegration,  schedule,  pullRequest,  };{
  /* Sets list of release variables to be overridden at deployment time. */
  Map<String, ConfigurationVariableValue> variables = {};
  ReleaseStartMetadata();

  @override
  String toString() {
    return 'ReleaseStartMetadata[artifacts=$artifacts, definitionId=$definitionId, description=$description, environmentsMetadata=$environmentsMetadata, isDraft=$isDraft, manualEnvironments=$manualEnvironments, properties=$properties, reason=$reason, variables=$variables, ]';
  }

  ReleaseStartMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifacts'] == null) {
      artifacts = null;
    } else {
      artifacts = ArtifactMetadata.listFromJson(json['artifacts']);
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['environmentsMetadata'] == null) {
      environmentsMetadata = null;
    } else {
      environmentsMetadata = ReleaseStartEnvironmentMetadata.listFromJson(json['environmentsMetadata']);
    }
    if (json['isDraft'] == null) {
      isDraft = null;
    } else {
          isDraft = json['isDraft'];
    }
    if (json['manualEnvironments'] == null) {
      manualEnvironments = null;
    } else {
      manualEnvironments = (json['manualEnvironments'] as List).cast<String>();
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifacts != null)
      json['artifacts'] = artifacts;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (description != null)
      json['description'] = description;
    if (environmentsMetadata != null)
      json['environmentsMetadata'] = environmentsMetadata;
    if (isDraft != null)
      json['isDraft'] = isDraft;
    if (manualEnvironments != null)
      json['manualEnvironments'] = manualEnvironments;
    if (properties != null)
      json['properties'] = properties;
    if (reason != null)
      json['reason'] = reason;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<ReleaseStartMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseStartMetadata>() : json.map((value) => ReleaseStartMetadata.fromJson(value)).toList();
  }

  static Map<String, ReleaseStartMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseStartMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseStartMetadata.fromJson(value));
    }
    return map;
  }
}

