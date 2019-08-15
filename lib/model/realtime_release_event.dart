part of azure_devops_sdk.api;

class RealtimeReleaseEvent {
  
  int environmentId = null;
  
  String projectId = null;
  
  int releaseId = null;
  RealtimeReleaseEvent();

  @override
  String toString() {
    return 'RealtimeReleaseEvent[environmentId=$environmentId, projectId=$projectId, releaseId=$releaseId, ]';
  }

  RealtimeReleaseEvent.fromJson(Map<String, dynamic> json) {
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

  static List<RealtimeReleaseEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<RealtimeReleaseEvent>() : json.map((value) => RealtimeReleaseEvent.fromJson(value)).toList();
  }

  static Map<String, RealtimeReleaseEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RealtimeReleaseEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RealtimeReleaseEvent.fromJson(value));
    }
    return map;
  }
}

