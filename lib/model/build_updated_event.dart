part of azure_devops_sdk.api;

class BuildUpdatedEvent {
  
  int buildId = null;
  BuildUpdatedEvent();

  @override
  String toString() {
    return 'BuildUpdatedEvent[buildId=$buildId, ]';
  }

  BuildUpdatedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    return json;
  }

  static List<BuildUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildUpdatedEvent>() : json.map((value) => BuildUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

