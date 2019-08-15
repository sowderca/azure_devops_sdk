part of azure_devops_sdk.api;

class ReleaseReference2 {
  
  int attempt = null;
  
  DateTime environmentCreationDate = null;
  
  String projectId = null;
  
  DateTime releaseCreationDate = null;
  
  int releaseDefId = null;
  
  int releaseEnvDefId = null;
  
  int releaseEnvId = null;
  
  String releaseEnvName = null;
  
  String releaseEnvUri = null;
  
  int releaseId = null;
  
  String releaseName = null;
  
  int releaseRefId = null;
  
  String releaseUri = null;
  ReleaseReference2();

  @override
  String toString() {
    return 'ReleaseReference2[attempt=$attempt, environmentCreationDate=$environmentCreationDate, projectId=$projectId, releaseCreationDate=$releaseCreationDate, releaseDefId=$releaseDefId, releaseEnvDefId=$releaseEnvDefId, releaseEnvId=$releaseEnvId, releaseEnvName=$releaseEnvName, releaseEnvUri=$releaseEnvUri, releaseId=$releaseId, releaseName=$releaseName, releaseRefId=$releaseRefId, releaseUri=$releaseUri, ]';
  }

  ReleaseReference2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['environmentCreationDate'] == null) {
      environmentCreationDate = null;
    } else {
      environmentCreationDate = DateTime.parse(json['environmentCreationDate']);
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['releaseCreationDate'] == null) {
      releaseCreationDate = null;
    } else {
      releaseCreationDate = DateTime.parse(json['releaseCreationDate']);
    }
    if (json['releaseDefId'] == null) {
      releaseDefId = null;
    } else {
          releaseDefId = json['releaseDefId'];
    }
    if (json['releaseEnvDefId'] == null) {
      releaseEnvDefId = null;
    } else {
          releaseEnvDefId = json['releaseEnvDefId'];
    }
    if (json['releaseEnvId'] == null) {
      releaseEnvId = null;
    } else {
          releaseEnvId = json['releaseEnvId'];
    }
    if (json['releaseEnvName'] == null) {
      releaseEnvName = null;
    } else {
          releaseEnvName = json['releaseEnvName'];
    }
    if (json['releaseEnvUri'] == null) {
      releaseEnvUri = null;
    } else {
          releaseEnvUri = json['releaseEnvUri'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
    if (json['releaseName'] == null) {
      releaseName = null;
    } else {
          releaseName = json['releaseName'];
    }
    if (json['releaseRefId'] == null) {
      releaseRefId = null;
    } else {
          releaseRefId = json['releaseRefId'];
    }
    if (json['releaseUri'] == null) {
      releaseUri = null;
    } else {
          releaseUri = json['releaseUri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (environmentCreationDate != null)
      json['environmentCreationDate'] = environmentCreationDate == null ? null : environmentCreationDate.toUtc().toIso8601String();
    if (projectId != null)
      json['projectId'] = projectId;
    if (releaseCreationDate != null)
      json['releaseCreationDate'] = releaseCreationDate == null ? null : releaseCreationDate.toUtc().toIso8601String();
    if (releaseDefId != null)
      json['releaseDefId'] = releaseDefId;
    if (releaseEnvDefId != null)
      json['releaseEnvDefId'] = releaseEnvDefId;
    if (releaseEnvId != null)
      json['releaseEnvId'] = releaseEnvId;
    if (releaseEnvName != null)
      json['releaseEnvName'] = releaseEnvName;
    if (releaseEnvUri != null)
      json['releaseEnvUri'] = releaseEnvUri;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    if (releaseName != null)
      json['releaseName'] = releaseName;
    if (releaseRefId != null)
      json['releaseRefId'] = releaseRefId;
    if (releaseUri != null)
      json['releaseUri'] = releaseUri;
    return json;
  }

  static List<ReleaseReference2> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseReference2>() : json.map((value) => ReleaseReference2.fromJson(value)).toList();
  }

  static Map<String, ReleaseReference2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseReference2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseReference2.fromJson(value));
    }
    return map;
  }
}

