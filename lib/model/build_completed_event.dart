part of azure_devops_sdk.api;

class BuildCompletedEvent {
  
  int buildId = null;
  BuildCompletedEvent();

  @override
  String toString() {
    return 'BuildCompletedEvent[buildId=$buildId, ]';
  }

  BuildCompletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<BuildCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildCompletedEvent>() : json.map((value) => BuildCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildCompletedEvent.fromJson(value));
    }
    return map;
  }
}

