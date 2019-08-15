part of azure_devops_sdk.api;

class AgentPoolQueueTarget {
  /* The type of the target. */
  int type = null;
  AgentPoolQueueTarget();

  @override
  String toString() {
    return 'AgentPoolQueueTarget[type=$type, ]';
  }

  AgentPoolQueueTarget.fromJson(Map<String, dynamic> json) {
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

  static List<AgentPoolQueueTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentPoolQueueTarget>() : json.map((value) => AgentPoolQueueTarget.fromJson(value)).toList();
  }

  static Map<String, AgentPoolQueueTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentPoolQueueTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentPoolQueueTarget.fromJson(value));
    }
    return map;
  }
}

