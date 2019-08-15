part of azure_devops_sdk.api;

class ReleaseEnvironmentStatusUpdatedEvent {
  
  int definitionId = null;
  
  String projectId = null;
  ReleaseEnvironmentStatusUpdatedEvent();

  @override
  String toString() {
    return 'ReleaseEnvironmentStatusUpdatedEvent[definitionId=$definitionId, projectId=$projectId, ]';
  }

  ReleaseEnvironmentStatusUpdatedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<ReleaseEnvironmentStatusUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironmentStatusUpdatedEvent>() : json.map((value) => ReleaseEnvironmentStatusUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironmentStatusUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironmentStatusUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironmentStatusUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

