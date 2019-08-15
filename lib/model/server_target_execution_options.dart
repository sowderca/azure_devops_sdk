part of azure_devops_sdk.api;

class ServerTargetExecutionOptions {
  /* The type. */
  int type = null;
  ServerTargetExecutionOptions();

  @override
  String toString() {
    return 'ServerTargetExecutionOptions[type=$type, ]';
  }

  ServerTargetExecutionOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ServerTargetExecutionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ServerTargetExecutionOptions>() : json.map((value) => ServerTargetExecutionOptions.fromJson(value)).toList();
  }

  static Map<String, ServerTargetExecutionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServerTargetExecutionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServerTargetExecutionOptions.fromJson(value));
    }
    return map;
  }
}

