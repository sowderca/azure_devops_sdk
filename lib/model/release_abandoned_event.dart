part of azure_devops_sdk.api;

class ReleaseAbandonedEvent {
  
  ProjectReference project = null;
  
  Release release = null;
  ReleaseAbandonedEvent();

  @override
  String toString() {
    return 'ReleaseAbandonedEvent[project=$project, release=$release, ]';
  }

  ReleaseAbandonedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = Release.fromJson(json['release']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<ReleaseAbandonedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseAbandonedEvent>() : json.map((value) => ReleaseAbandonedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseAbandonedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseAbandonedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseAbandonedEvent.fromJson(value));
    }
    return map;
  }
}

