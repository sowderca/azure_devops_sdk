part of azure_devops_sdk.api;

class ConsoleLogEvent {
  
  int buildId = null;
  ConsoleLogEvent();

  @override
  String toString() {
    return 'ConsoleLogEvent[buildId=$buildId, ]';
  }

  ConsoleLogEvent.fromJson(Map<String, dynamic> json) {
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

  static List<ConsoleLogEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ConsoleLogEvent>() : json.map((value) => ConsoleLogEvent.fromJson(value)).toList();
  }

  static Map<String, ConsoleLogEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ConsoleLogEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ConsoleLogEvent.fromJson(value));
    }
    return map;
  }
}

