part of azure_devops_sdk.api;

class BuildVersion {
  /* Gets or sets the commit message for the artifact. */
  String commitMessage = null;
  /* Gets or sets the definition id. */
  String definitionId = null;
  /* Gets or sets the definition name. */
  String definitionName = null;
  /* Gets or sets the build id. */
  String id = null;
  /* Gets or sets if the artifact supports multiple definitions. */
  bool isMultiDefinitionType = null;
  /* Gets or sets the build number. */
  String name = null;
  /* Gets or sets the source branch for the artifact. */
  String sourceBranch = null;
  
  SourcePullRequestVersion sourcePullRequestVersion = null;
  /* Gets or sets the repository id for the artifact. */
  String sourceRepositoryId = null;
  /* Gets or sets the repository type for the artifact. */
  String sourceRepositoryType = null;
  /* Gets or sets the source version for the artifact. */
  String sourceVersion = null;
  BuildVersion();

  @override
  String toString() {
    return 'BuildVersion[commitMessage=$commitMessage, definitionId=$definitionId, definitionName=$definitionName, id=$id, isMultiDefinitionType=$isMultiDefinitionType, name=$name, sourceBranch=$sourceBranch, sourcePullRequestVersion=$sourcePullRequestVersion, sourceRepositoryId=$sourceRepositoryId, sourceRepositoryType=$sourceRepositoryType, sourceVersion=$sourceVersion, ]';
  }

  BuildVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitMessage'] == null) {
      commitMessage = null;
    } else {
          commitMessage = json['commitMessage'];
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['definitionName'] == null) {
      definitionName = null;
    } else {
          definitionName = json['definitionName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isMultiDefinitionType'] == null) {
      isMultiDefinitionType = null;
    } else {
          isMultiDefinitionType = json['isMultiDefinitionType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['sourceBranch'] == null) {
      sourceBranch = null;
    } else {
          sourceBranch = json['sourceBranch'];
    }
    if (json['sourcePullRequestVersion'] == null) {
      sourcePullRequestVersion = null;
    } else {
      sourcePullRequestVersion = SourcePullRequestVersion.fromJson(json['sourcePullRequestVersion']);
    }
    if (json['sourceRepositoryId'] == null) {
      sourceRepositoryId = null;
    } else {
          sourceRepositoryId = json['sourceRepositoryId'];
    }
    if (json['sourceRepositoryType'] == null) {
      sourceRepositoryType = null;
    } else {
          sourceRepositoryType = json['sourceRepositoryType'];
    }
    if (json['sourceVersion'] == null) {
      sourceVersion = null;
    } else {
          sourceVersion = json['sourceVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitMessage != null)
      json['commitMessage'] = commitMessage;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (definitionName != null)
      json['definitionName'] = definitionName;
    if (id != null)
      json['id'] = id;
    if (isMultiDefinitionType != null)
      json['isMultiDefinitionType'] = isMultiDefinitionType;
    if (name != null)
      json['name'] = name;
    if (sourceBranch != null)
      json['sourceBranch'] = sourceBranch;
    if (sourcePullRequestVersion != null)
      json['sourcePullRequestVersion'] = sourcePullRequestVersion;
    if (sourceRepositoryId != null)
      json['sourceRepositoryId'] = sourceRepositoryId;
    if (sourceRepositoryType != null)
      json['sourceRepositoryType'] = sourceRepositoryType;
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    return json;
  }

  static List<BuildVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildVersion>() : json.map((value) => BuildVersion.fromJson(value)).toList();
  }

  static Map<String, BuildVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildVersion.fromJson(value));
    }
    return map;
  }
}

