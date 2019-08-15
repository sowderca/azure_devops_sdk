part of azure_devops_sdk.api;

class AgentTargetExecutionOptions {
  /* Indicates the type of execution options. */
  int type = null;
  AgentTargetExecutionOptions();

  @override
  String toString() {
    return 'AgentTargetExecutionOptions[type=$type, ]';
  }

  AgentTargetExecutionOptions.fromJson(Map<String, dynamic> json) {
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

  static List<AgentTargetExecutionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentTargetExecutionOptions>() : json.map((value) => AgentTargetExecutionOptions.fromJson(value)).toList();
  }

  static Map<String, AgentTargetExecutionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentTargetExecutionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentTargetExecutionOptions.fromJson(value));
    }
    return map;
  }
}

