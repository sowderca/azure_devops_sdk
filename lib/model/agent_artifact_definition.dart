part of azure_devops_sdk.api;

class AgentArtifactDefinition {
  /* Gets or sets the artifact definition alias. */
  String alias = null;
  /* Gets or sets the artifact type. */
  String artifactType = null;
  //enum artifactTypeEnum {  xamlBuild,  build,  jenkins,  fileShare,  nuget,  tfsOnPrem,  gitHub,  tfGit,  externalTfsBuild,  custom,  tfvc,  };{
  /* Gets or sets the artifact definition details. */
  String details = null;
  /* Gets or sets the name of artifact definition. */
  String name = null;
  /* Gets or sets the version of artifact definition. */
  String version = null;
  AgentArtifactDefinition();

  @override
  String toString() {
    return 'AgentArtifactDefinition[alias=$alias, artifactType=$artifactType, details=$details, name=$name, version=$version, ]';
  }

  AgentArtifactDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['details'] == null) {
      details = null;
    } else {
          details = json['details'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (details != null)
      json['details'] = details;
    if (name != null)
      json['name'] = name;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<AgentArtifactDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentArtifactDefinition>() : json.map((value) => AgentArtifactDefinition.fromJson(value)).toList();
  }

  static Map<String, AgentArtifactDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentArtifactDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentArtifactDefinition.fromJson(value));
    }
    return map;
  }
}

