part of azure_devops_sdk.api;

class ProcessBehaviorUpdateRequest {
  /* Color. */
  String color = null;
  /* Behavior Name. */
  String name = null;
  ProcessBehaviorUpdateRequest();

  @override
  String toString() {
    return 'ProcessBehaviorUpdateRequest[color=$color, name=$name, ]';
  }

  ProcessBehaviorUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ProcessBehaviorUpdateRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessBehaviorUpdateRequest>() : json.map((value) => ProcessBehaviorUpdateRequest.fromJson(value)).toList();
  }

  static Map<String, ProcessBehaviorUpdateRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessBehaviorUpdateRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessBehaviorUpdateRequest.fromJson(value));
    }
    return map;
  }
}

