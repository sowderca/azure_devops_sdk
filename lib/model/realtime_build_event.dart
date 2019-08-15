part of azure_devops_sdk.api;

class RealtimeBuildEvent {
  
  int buildId = null;
  RealtimeBuildEvent();

  @override
  String toString() {
    return 'RealtimeBuildEvent[buildId=$buildId, ]';
  }

  RealtimeBuildEvent.fromJson(Map<String, dynamic> json) {
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

  static List<RealtimeBuildEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<RealtimeBuildEvent>() : json.map((value) => RealtimeBuildEvent.fromJson(value)).toList();
  }

  static Map<String, RealtimeBuildEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RealtimeBuildEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RealtimeBuildEvent.fromJson(value));
    }
    return map;
  }
}

