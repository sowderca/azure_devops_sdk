part of azure_devops_sdk.api;

class VersionControlProjectInfo {
  
  String defaultSourceControlType = null;
  //enum defaultSourceControlTypeEnum {  tfvc,  git,  };{
  
  TeamProjectReference project = null;
  
  bool supportsGit = null;
  
  bool supportsTFVC = null;
  VersionControlProjectInfo();

  @override
  String toString() {
    return 'VersionControlProjectInfo[defaultSourceControlType=$defaultSourceControlType, project=$project, supportsGit=$supportsGit, supportsTFVC=$supportsTFVC, ]';
  }

  VersionControlProjectInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultSourceControlType'] == null) {
      defaultSourceControlType = null;
    } else {
          defaultSourceControlType = json['defaultSourceControlType'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
    if (json['supportsGit'] == null) {
      supportsGit = null;
    } else {
          supportsGit = json['supportsGit'];
    }
    if (json['supportsTFVC'] == null) {
      supportsTFVC = null;
    } else {
          supportsTFVC = json['supportsTFVC'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultSourceControlType != null)
      json['defaultSourceControlType'] = defaultSourceControlType;
    if (project != null)
      json['project'] = project;
    if (supportsGit != null)
      json['supportsGit'] = supportsGit;
    if (supportsTFVC != null)
      json['supportsTFVC'] = supportsTFVC;
    return json;
  }

  static List<VersionControlProjectInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<VersionControlProjectInfo>() : json.map((value) => VersionControlProjectInfo.fromJson(value)).toList();
  }

  static Map<String, VersionControlProjectInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VersionControlProjectInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VersionControlProjectInfo.fromJson(value));
    }
    return map;
  }
}

