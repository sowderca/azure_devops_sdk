part of azure_devops_sdk.api;

class BuildTagsAddedEvent {
  
  int buildId = null;
  BuildTagsAddedEvent();

  @override
  String toString() {
    return 'BuildTagsAddedEvent[buildId=$buildId, ]';
  }

  BuildTagsAddedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<BuildTagsAddedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildTagsAddedEvent>() : json.map((value) => BuildTagsAddedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildTagsAddedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildTagsAddedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildTagsAddedEvent.fromJson(value));
    }
    return map;
  }
}

