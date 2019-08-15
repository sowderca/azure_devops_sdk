part of azure_devops_sdk.api;

class LegacyBuildConfiguration {
  
  String branchName = null;
  
  int buildConfigurationId = null;
  
  int buildDefinitionId = null;
  
  String buildDefinitionName = null;
  
  String buildFlavor = null;
  
  int buildId = null;
  
  String buildNumber = null;
  
  String buildPlatform = null;
  
  String buildQuality = null;
  
  String buildSystem = null;
  
  String buildUri = null;
  
  DateTime completedDate = null;
  
  DateTime createdDate = null;
  
  int oldBuildConfigurationId = null;
  
  String repositoryId = null;
  
  String repositoryType = null;
  
  String sourceVersion = null;
  
  String teamProjectName = null;
  LegacyBuildConfiguration();

  @override
  String toString() {
    return 'LegacyBuildConfiguration[branchName=$branchName, buildConfigurationId=$buildConfigurationId, buildDefinitionId=$buildDefinitionId, buildDefinitionName=$buildDefinitionName, buildFlavor=$buildFlavor, buildId=$buildId, buildNumber=$buildNumber, buildPlatform=$buildPlatform, buildQuality=$buildQuality, buildSystem=$buildSystem, buildUri=$buildUri, completedDate=$completedDate, createdDate=$createdDate, oldBuildConfigurationId=$oldBuildConfigurationId, repositoryId=$repositoryId, repositoryType=$repositoryType, sourceVersion=$sourceVersion, teamProjectName=$teamProjectName, ]';
  }

  LegacyBuildConfiguration.fromJson(Map<String, dynamic> json) {
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
    if (json['buildDefinitionName'] == null) {
      buildDefinitionName = null;
    } else {
          buildDefinitionName = json['buildDefinitionName'];
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
    if (json['buildQuality'] == null) {
      buildQuality = null;
    } else {
          buildQuality = json['buildQuality'];
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
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
      completedDate = DateTime.parse(json['completedDate']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['oldBuildConfigurationId'] == null) {
      oldBuildConfigurationId = null;
    } else {
          oldBuildConfigurationId = json['oldBuildConfigurationId'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
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
    if (json['teamProjectName'] == null) {
      teamProjectName = null;
    } else {
          teamProjectName = json['teamProjectName'];
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
    if (buildDefinitionName != null)
      json['buildDefinitionName'] = buildDefinitionName;
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildId != null)
      json['buildId'] = buildId;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (buildQuality != null)
      json['buildQuality'] = buildQuality;
    if (buildSystem != null)
      json['buildSystem'] = buildSystem;
    if (buildUri != null)
      json['buildUri'] = buildUri;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (oldBuildConfigurationId != null)
      json['oldBuildConfigurationId'] = oldBuildConfigurationId;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (repositoryType != null)
      json['repositoryType'] = repositoryType;
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    if (teamProjectName != null)
      json['teamProjectName'] = teamProjectName;
    return json;
  }

  static List<LegacyBuildConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyBuildConfiguration>() : json.map((value) => LegacyBuildConfiguration.fromJson(value)).toList();
  }

  static Map<String, LegacyBuildConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyBuildConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyBuildConfiguration.fromJson(value));
    }
    return map;
  }
}

