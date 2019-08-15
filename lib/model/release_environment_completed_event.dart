part of azure_devops_sdk.api;

class ReleaseEnvironmentCompletedEvent {
  
  String createdByName = null;
  
  int definitionId = null;
  
  String definitionName = null;
  
  ReleaseEnvironment environment = null;
  
  int environmentId = null;
  
  String projectName = null;
  
  String reason = null;
  //enum reasonEnum {  none,  manual,  automated,  scheduled,  redeployTrigger,  };{
  
  IdentityRef releaseCreatedBy = null;
  
  String releaseLogsUri = null;
  
  String releaseName = null;
  
  String status = null;
  
  String title = null;
  
  String webAccessUri = null;
  ReleaseEnvironmentCompletedEvent();

  @override
  String toString() {
    return 'ReleaseEnvironmentCompletedEvent[createdByName=$createdByName, definitionId=$definitionId, definitionName=$definitionName, environment=$environment, environmentId=$environmentId, projectName=$projectName, reason=$reason, releaseCreatedBy=$releaseCreatedBy, releaseLogsUri=$releaseLogsUri, releaseName=$releaseName, status=$status, title=$title, webAccessUri=$webAccessUri, ]';
  }

  ReleaseEnvironmentCompletedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdByName'] == null) {
      createdByName = null;
    } else {
          createdByName = json['createdByName'];
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
    if (json['environment'] == null) {
      environment = null;
    } else {
      environment = ReleaseEnvironment.fromJson(json['environment']);
    }
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['releaseCreatedBy'] == null) {
      releaseCreatedBy = null;
    } else {
      releaseCreatedBy = IdentityRef.fromJson(json['releaseCreatedBy']);
    }
    if (json['releaseLogsUri'] == null) {
      releaseLogsUri = null;
    } else {
          releaseLogsUri = json['releaseLogsUri'];
    }
    if (json['releaseName'] == null) {
      releaseName = null;
    } else {
          releaseName = json['releaseName'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['webAccessUri'] == null) {
      webAccessUri = null;
    } else {
          webAccessUri = json['webAccessUri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdByName != null)
      json['createdByName'] = createdByName;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (definitionName != null)
      json['definitionName'] = definitionName;
    if (environment != null)
      json['environment'] = environment;
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (projectName != null)
      json['projectName'] = projectName;
    if (reason != null)
      json['reason'] = reason;
    if (releaseCreatedBy != null)
      json['releaseCreatedBy'] = releaseCreatedBy;
    if (releaseLogsUri != null)
      json['releaseLogsUri'] = releaseLogsUri;
    if (releaseName != null)
      json['releaseName'] = releaseName;
    if (status != null)
      json['status'] = status;
    if (title != null)
      json['title'] = title;
    if (webAccessUri != null)
      json['webAccessUri'] = webAccessUri;
    return json;
  }

  static List<ReleaseEnvironmentCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironmentCompletedEvent>() : json.map((value) => ReleaseEnvironmentCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironmentCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironmentCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironmentCompletedEvent.fromJson(value));
    }
    return map;
  }
}

