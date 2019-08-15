part of azure_devops_sdk.api;

class ArtifactTypeDefinition {
  
  ArtifactTriggerConfiguration artifactTriggerConfiguration = null;
  /* Gets or sets the artifact type of artifact type definition. Valid values are 'Build', 'Package', 'Source' or 'ContainerImage'. */
  String artifactType = null;
  /* Gets or sets the display name of artifact type definition. */
  String displayName = null;
  /* Gets or sets the endpoint type id of artifact type definition. */
  String endpointTypeId = null;
  /* Gets or sets the input descriptors of artifact type definition. */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets or sets the name of artifact type definition. */
  String name = null;
  /* Gets or sets the unique source identifier of artifact type definition. */
  String uniqueSourceIdentifier = null;
  ArtifactTypeDefinition();

  @override
  String toString() {
    return 'ArtifactTypeDefinition[artifactTriggerConfiguration=$artifactTriggerConfiguration, artifactType=$artifactType, displayName=$displayName, endpointTypeId=$endpointTypeId, inputDescriptors=$inputDescriptors, name=$name, uniqueSourceIdentifier=$uniqueSourceIdentifier, ]';
  }

  ArtifactTypeDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactTriggerConfiguration'] == null) {
      artifactTriggerConfiguration = null;
    } else {
      artifactTriggerConfiguration = ArtifactTriggerConfiguration.fromJson(json['artifactTriggerConfiguration']);
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['endpointTypeId'] == null) {
      endpointTypeId = null;
    } else {
          endpointTypeId = json['endpointTypeId'];
    }
    if (json['inputDescriptors'] == null) {
      inputDescriptors = null;
    } else {
      inputDescriptors = InputDescriptor.listFromJson(json['inputDescriptors']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['uniqueSourceIdentifier'] == null) {
      uniqueSourceIdentifier = null;
    } else {
          uniqueSourceIdentifier = json['uniqueSourceIdentifier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactTriggerConfiguration != null)
      json['artifactTriggerConfiguration'] = artifactTriggerConfiguration;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (displayName != null)
      json['displayName'] = displayName;
    if (endpointTypeId != null)
      json['endpointTypeId'] = endpointTypeId;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    if (uniqueSourceIdentifier != null)
      json['uniqueSourceIdentifier'] = uniqueSourceIdentifier;
    return json;
  }

  static List<ArtifactTypeDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactTypeDefinition>() : json.map((value) => ArtifactTypeDefinition.fromJson(value)).toList();
  }

  static Map<String, ArtifactTypeDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactTypeDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactTypeDefinition.fromJson(value));
    }
    return map;
  }
}

