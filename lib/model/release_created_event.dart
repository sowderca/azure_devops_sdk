part of azure_devops_sdk.api;

class ReleaseCreatedEvent {
  
  ProjectReference project = null;
  
  Release release = null;
  ReleaseCreatedEvent();

  @override
  String toString() {
    return 'ReleaseCreatedEvent[project=$project, release=$release, ]';
  }

  ReleaseCreatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseCreatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseCreatedEvent>() : json.map((value) => ReleaseCreatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseCreatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseCreatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseCreatedEvent.fromJson(value));
    }
    return map;
  }
}

