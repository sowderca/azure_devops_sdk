part of azure_devops_sdk.api;

class ReleaseTaskLogUpdatedEvent {
  
  int environmentId = null;
  
  String projectId = null;
  
  int releaseId = null;
  ReleaseTaskLogUpdatedEvent();

  @override
  String toString() {
    return 'ReleaseTaskLogUpdatedEvent[environmentId=$environmentId, projectId=$projectId, releaseId=$releaseId, ]';
  }

  ReleaseTaskLogUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseTaskLogUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseTaskLogUpdatedEvent>() : json.map((value) => ReleaseTaskLogUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseTaskLogUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseTaskLogUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseTaskLogUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

