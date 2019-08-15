part of azure_devops_sdk.api;

class ReleaseTasksUpdatedEvent {
  
  int environmentId = null;
  
  String projectId = null;
  
  int releaseId = null;
  ReleaseTasksUpdatedEvent();

  @override
  String toString() {
    return 'ReleaseTasksUpdatedEvent[environmentId=$environmentId, projectId=$projectId, releaseId=$releaseId, ]';
  }

  ReleaseTasksUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseTasksUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseTasksUpdatedEvent>() : json.map((value) => ReleaseTasksUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseTasksUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseTasksUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseTasksUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

