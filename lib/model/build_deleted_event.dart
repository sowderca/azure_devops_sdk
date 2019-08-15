part of azure_devops_sdk.api;

class BuildDeletedEvent {
  
  int buildId = null;
  BuildDeletedEvent();

  @override
  String toString() {
    return 'BuildDeletedEvent[buildId=$buildId, ]';
  }

  BuildDeletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<BuildDeletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDeletedEvent>() : json.map((value) => BuildDeletedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildDeletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDeletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDeletedEvent.fromJson(value));
    }
    return map;
  }
}

