part of azure_devops_sdk.api;

class BuildReference2 {
  
  String branchName = null;
  
  int buildConfigurationId = null;
  
  int buildDefinitionId = null;
  
  bool buildDeleted = null;
  
  String buildFlavor = null;
  
  int buildId = null;
  
  String buildNumber = null;
  
  String buildPlatform = null;
  
  String buildSystem = null;
  
  String buildUri = null;
  
  int coverageId = null;
  
  DateTime createdDate = null;
  
  String projectId = null;
  
  String repoId = null;
  
  String repoType = null;
  
  String sourceVersion = null;
  BuildReference2();

  @override
  String toString() {
    return 'BuildReference2[branchName=$branchName, buildConfigurationId=$buildConfigurationId, buildDefinitionId=$buildDefinitionId, buildDeleted=$buildDeleted, buildFlavor=$buildFlavor, buildId=$buildId, buildNumber=$buildNumber, buildPlatform=$buildPlatform, buildSystem=$buildSystem, buildUri=$buildUri, coverageId=$coverageId, createdDate=$createdDate, projectId=$projectId, repoId=$repoId, repoType=$repoType, sourceVersion=$sourceVersion, ]';
  }

  BuildReference2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchName'] == null) {
      branchName = null;
    } else {
          branchName = json['branchName'];
    }
    if (json['buildConfigurationId'] == null) {
      buildConfigurationId = null;
    } else {
          buildConfigurationId = json['buildConfigurationId'];
    }
    if (json['buildDefinitionId'] == null) {
      buildDefinitionId = null;
    } else {
          buildDefinitionId = json['buildDefinitionId'];
    }
    if (json['buildDeleted'] == null) {
      buildDeleted = null;
    } else {
          buildDeleted = json['buildDeleted'];
    }
    if (json['buildFlavor'] == null) {
      buildFlavor = null;
    } else {
          buildFlavor = json['buildFlavor'];
    }
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['buildPlatform'] == null) {
      buildPlatform = null;
    } else {
          buildPlatform = json['buildPlatform'];
    }
    if (json['buildSystem'] == null) {
      buildSystem = null;
    } else {
          buildSystem = json['buildSystem'];
    }
    if (json['buildUri'] == null) {
      buildUri = null;
    } else {
          buildUri = json['buildUri'];
    }
    if (json['coverageId'] == null) {
      coverageId = null;
    } else {
          coverageId = json['coverageId'];
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['repoId'] == null) {
      repoId = null;
    } else {
          repoId = json['repoId'];
    }
    if (json['repoType'] == null) {
      repoType = null;
    } else {
          repoType = json['repoType'];
    }
    if (json['sourceVersion'] == null) {
      sourceVersion = null;
    } else {
          sourceVersion = json['sourceVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchName != null)
      json['branchName'] = branchName;
    if (buildConfigurationId != null)
      json['buildConfigurationId'] = buildConfigurationId;
    if (buildDefinitionId != null)
      json['buildDefinitionId'] = buildDefinitionId;
    if (buildDeleted != null)
      json['buildDeleted'] = buildDeleted;
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildId != null)
      json['buildId'] = buildId;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (buildSystem != null)
      json['buildSystem'] = buildSystem;
    if (buildUri != null)
      json['buildUri'] = buildUri;
    if (coverageId != null)
      json['coverageId'] = coverageId;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (projectId != null)
      json['projectId'] = projectId;
    if (repoId != null)
      json['repoId'] = repoId;
    if (repoType != null)
      json['repoType'] = repoType;
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    return json;
  }

  static List<BuildReference2> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildReference2>() : json.map((value) => BuildReference2.fromJson(value)).toList();
  }

  static Map<String, BuildReference2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildReference2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildReference2.fromJson(value));
    }
    return map;
  }
}

