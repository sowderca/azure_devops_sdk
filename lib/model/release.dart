part of azure_devops_sdk.api;

class Release {
  
  ReferenceLinks links = null;
  /* Gets or sets the list of artifacts. */
  List<Artifact> artifacts = [];
  /* Gets or sets comment. */
  String comment = null;
  
  IdentityRef createdBy = null;
  /* Gets date on which it got created. */
  DateTime createdOn = null;
  /* Gets revision number of definition snapshot. */
  int definitionSnapshotRevision = null;
  /* Gets or sets description of release. */
  String description = null;
  /* Gets list of environments. */
  List<ReleaseEnvironment> environments = [];
  /* Gets the unique identifier of this field. */
  int id = null;
  /* Whether to exclude the release from retention policies. */
  bool keepForever = null;
  /* Gets logs container url. */
  String logsContainerUrl = null;
  
  IdentityRef modifiedBy = null;
  /* Gets date on which it got modified. */
  DateTime modifiedOn = null;
  /* Gets name. */
  String name = null;
  /* Gets pool name. */
  String poolName = null;
  
  ProjectReference projectReference = null;
  
  PropertiesCollection properties = null;
  /* Gets reason of release. */
  String reason = null;
  //enum reasonEnum {  none,  manual,  continuousIntegration,  schedule,  pullRequest,  };{
  
  ReleaseDefinitionShallowReference releaseDefinition = null;
  /* Gets or sets the release definition revision. */
  int releaseDefinitionRevision = null;
  /* Gets release name format. */
  String releaseNameFormat = null;
  /* Gets status. */
  String status = null;
  //enum statusEnum {  undefined,  draft,  active,  abandoned,  };{
  /* Gets or sets list of tags. */
  List<String> tags = [];
  
  String triggeringArtifactAlias = null;
  /* Gets the list of variable groups. */
  List<VariableGroup> variableGroups = [];
  /* Gets or sets the dictionary of variables. */
  Map<String, ConfigurationVariableValue> variables = {};
  Release();

  @override
  String toString() {
    return 'Release[links=$links, artifacts=$artifacts, comment=$comment, createdBy=$createdBy, createdOn=$createdOn, definitionSnapshotRevision=$definitionSnapshotRevision, description=$description, environments=$environments, id=$id, keepForever=$keepForever, logsContainerUrl=$logsContainerUrl, modifiedBy=$modifiedBy, modifiedOn=$modifiedOn, name=$name, poolName=$poolName, projectReference=$projectReference, properties=$properties, reason=$reason, releaseDefinition=$releaseDefinition, releaseDefinitionRevision=$releaseDefinitionRevision, releaseNameFormat=$releaseNameFormat, status=$status, tags=$tags, triggeringArtifactAlias=$triggeringArtifactAlias, variableGroups=$variableGroups, variables=$variables, ]';
  }

  Release.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['artifacts'] == null) {
      artifacts = null;
    } else {
      artifacts = Artifact.listFromJson(json['artifacts']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['definitionSnapshotRevision'] == null) {
      definitionSnapshotRevision = null;
    } else {
          definitionSnapshotRevision = json['definitionSnapshotRevision'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['environments'] == null) {
      environments = null;
    } else {
      environments = ReleaseEnvironment.listFromJson(json['environments']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['keepForever'] == null) {
      keepForever = null;
    } else {
          keepForever = json['keepForever'];
    }
    if (json['logsContainerUrl'] == null) {
      logsContainerUrl = null;
    } else {
          logsContainerUrl = json['logsContainerUrl'];
    }
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['poolName'] == null) {
      poolName = null;
    } else {
          poolName = json['poolName'];
    }
    if (json['projectReference'] == null) {
      projectReference = null;
    } else {
      projectReference = ProjectReference.fromJson(json['projectReference']);
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
    if (json['releaseDefinition'] == null) {
      releaseDefinition = null;
    } else {
      releaseDefinition = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinition']);
    }
    if (json['releaseDefinitionRevision'] == null) {
      releaseDefinitionRevision = null;
    } else {
          releaseDefinitionRevision = json['releaseDefinitionRevision'];
    }
    if (json['releaseNameFormat'] == null) {
      releaseNameFormat = null;
    } else {
          releaseNameFormat = json['releaseNameFormat'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['triggeringArtifactAlias'] == null) {
      triggeringArtifactAlias = null;
    } else {
          triggeringArtifactAlias = json['triggeringArtifactAlias'];
    }
    if (json['variableGroups'] == null) {
      variableGroups = null;
    } else {
      variableGroups = VariableGroup.listFromJson(json['variableGroups']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (artifacts != null)
      json['artifacts'] = artifacts;
    if (comment != null)
      json['comment'] = comment;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (definitionSnapshotRevision != null)
      json['definitionSnapshotRevision'] = definitionSnapshotRevision;
    if (description != null)
      json['description'] = description;
    if (environments != null)
      json['environments'] = environments;
    if (id != null)
      json['id'] = id;
    if (keepForever != null)
      json['keepForever'] = keepForever;
    if (logsContainerUrl != null)
      json['logsContainerUrl'] = logsContainerUrl;
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (poolName != null)
      json['poolName'] = poolName;
    if (projectReference != null)
      json['projectReference'] = projectReference;
    if (properties != null)
      json['properties'] = properties;
    if (reason != null)
      json['reason'] = reason;
    if (releaseDefinition != null)
      json['releaseDefinition'] = releaseDefinition;
    if (releaseDefinitionRevision != null)
      json['releaseDefinitionRevision'] = releaseDefinitionRevision;
    if (releaseNameFormat != null)
      json['releaseNameFormat'] = releaseNameFormat;
    if (status != null)
      json['status'] = status;
    if (tags != null)
      json['tags'] = tags;
    if (triggeringArtifactAlias != null)
      json['triggeringArtifactAlias'] = triggeringArtifactAlias;
    if (variableGroups != null)
      json['variableGroups'] = variableGroups;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<Release> listFromJson(List<dynamic> json) {
    return json == null ? List<Release>() : json.map((value) => Release.fromJson(value)).toList();
  }

  static Map<String, Release> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Release>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Release.fromJson(value));
    }
    return map;
  }
}

