part of azure_devops_sdk.api;

class BuildConfiguration {
  /* Branch name for which build is generated. */
  String branchName = null;
  /* BuildDefinitionId for build. */
  int buildDefinitionId = null;
  /* Build system. */
  String buildSystem = null;
  /* Build Creation Date. */
  DateTime creationDate = null;
  /* Build flavor (eg Build/Release). */
  String flavor = null;
  /* BuildConfiguration Id. */
  int id = null;
  /* Build Number. */
  String number = null;
  /* BuildConfiguration Platform. */
  String platform = null;
  
  ShallowReference project = null;
  /* Repository Guid for the Build. */
  String repositoryGuid = null;
  /* Repository Type (eg. TFSGit). */
  String repositoryType = null;
  /* Source Version(/first commit) for the build was triggered. */
  String sourceVersion = null;
  /* Target BranchName. */
  String targetBranchName = null;
  /* Build Uri. */
  String uri = null;
  BuildConfiguration();

  @override
  String toString() {
    return 'BuildConfiguration[branchName=$branchName, buildDefinitionId=$buildDefinitionId, buildSystem=$buildSystem, creationDate=$creationDate, flavor=$flavor, id=$id, number=$number, platform=$platform, project=$project, repositoryGuid=$repositoryGuid, repositoryType=$repositoryType, sourceVersion=$sourceVersion, targetBranchName=$targetBranchName, uri=$uri, ]';
  }

  BuildConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchName'] == null) {
      branchName = null;
    } else {
          branchName = json['branchName'];
    }
    if (json['buildDefinitionId'] == null) {
      buildDefinitionId = null;
    } else {
          buildDefinitionId = json['buildDefinitionId'];
    }
    if (json['buildSystem'] == null) {
      buildSystem = null;
    } else {
          buildSystem = json['buildSystem'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['flavor'] == null) {
      flavor = null;
    } else {
          flavor = json['flavor'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['number'] == null) {
      number = null;
    } else {
          number = json['number'];
    }
    if (json['platform'] == null) {
      platform = null;
    } else {
          platform = json['platform'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['repositoryGuid'] == null) {
      repositoryGuid = null;
    } else {
          repositoryGuid = json['repositoryGuid'];
    }
    if (json['repositoryType'] == null) {
      repositoryType = null;
    } else {
          repositoryType = json['repositoryType'];
    }
    if (json['sourceVersion'] == null) {
      sourceVersion = null;
    } else {
          sourceVersion = json['sourceVersion'];
    }
    if (json['targetBranchName'] == null) {
      targetBranchName = null;
    } else {
          targetBranchName = json['targetBranchName'];
    }
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchName != null)
      json['branchName'] = branchName;
    if (buildDefinitionId != null)
      json['buildDefinitionId'] = buildDefinitionId;
    if (buildSystem != null)
      json['buildSystem'] = buildSystem;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (flavor != null)
      json['flavor'] = flavor;
    if (id != null)
      json['id'] = id;
    if (number != null)
      json['number'] = number;
    if (platform != null)
      json['platform'] = platform;
    if (project != null)
      json['project'] = project;
    if (repositoryGuid != null)
      json['repositoryGuid'] = repositoryGuid;
    if (repositoryType != null)
      json['repositoryType'] = repositoryType;
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    if (targetBranchName != null)
      json['targetBranchName'] = targetBranchName;
    if (uri != null)
      json['uri'] = uri;
    return json;
  }

  static List<BuildConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildConfiguration>() : json.map((value) => BuildConfiguration.fromJson(value)).toList();
  }

  static Map<String, BuildConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildConfiguration.fromJson(value));
    }
    return map;
  }
}

