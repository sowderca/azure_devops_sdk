part of azure_devops_sdk.api;

class ReleaseUpdatedEvent {
  
  int environmentId = null;
  
  String projectId = null;
  
  int releaseId = null;
  ReleaseUpdatedEvent();

  @override
  String toString() {
    return 'ReleaseUpdatedEvent[environmentId=$environmentId, projectId=$projectId, releaseId=$releaseId, ]';
  }

  ReleaseUpdatedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (projectId != null)
      json['projectId'] = projectId;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    return json;
  }

  static List<ReleaseUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseUpdatedEvent>() : json.map((value) => ReleaseUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

