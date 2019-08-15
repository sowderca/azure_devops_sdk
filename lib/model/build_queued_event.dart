part of azure_devops_sdk.api;

class BuildQueuedEvent {
  
  int buildId = null;
  BuildQueuedEvent();

  @override
  String toString() {
    return 'BuildQueuedEvent[buildId=$buildId, ]';
  }

  BuildQueuedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<BuildQueuedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildQueuedEvent>() : json.map((value) => BuildQueuedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildQueuedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildQueuedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildQueuedEvent.fromJson(value));
    }
    return map;
  }
}

