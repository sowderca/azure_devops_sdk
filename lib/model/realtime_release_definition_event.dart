part of azure_devops_sdk.api;

class RealtimeReleaseDefinitionEvent {
  
  int definitionId = null;
  
  String projectId = null;
  RealtimeReleaseDefinitionEvent();

  @override
  String toString() {
    return 'RealtimeReleaseDefinitionEvent[definitionId=$definitionId, projectId=$projectId, ]';
  }

  RealtimeReleaseDefinitionEvent.fromJson(Map<String, dynamic> json) {
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

  static List<RealtimeReleaseDefinitionEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<RealtimeReleaseDefinitionEvent>() : json.map((value) => RealtimeReleaseDefinitionEvent.fromJson(value)).toList();
  }

  static Map<String, RealtimeReleaseDefinitionEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RealtimeReleaseDefinitionEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RealtimeReleaseDefinitionEvent.fromJson(value));
    }
    return map;
  }
}

