part of azure_devops_sdk.api;

class ProcessBehaviorCreateRequest {
  /* Color. */
  String color = null;
  /* Parent behavior id. */
  String inherits = null;
  /* Name of the behavior. */
  String name = null;
  /* ReferenceName is optional, if not specified will be auto-generated. */
  String referenceName = null;
  ProcessBehaviorCreateRequest();

  @override
  String toString() {
    return 'ProcessBehaviorCreateRequest[color=$color, inherits=$inherits, name=$name, referenceName=$referenceName, ]';
  }

  ProcessBehaviorCreateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['inherits'] == null) {
      inherits = null;
    } else {
          inherits = json['inherits'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (inherits != null)
      json['inherits'] = inherits;
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    return json;
  }

  static List<ProcessBehaviorCreateRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessBehaviorCreateRequest>() : json.map((value) => ProcessBehaviorCreateRequest.fromJson(value)).toList();
  }

  static Map<String, ProcessBehaviorCreateRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessBehaviorCreateRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessBehaviorCreateRequest.fromJson(value));
    }
    return map;
  }
}

