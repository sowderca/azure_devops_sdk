part of azure_devops_sdk.api;

class AgentPoolEvent {
  
  String eventType = null;
  
  TaskAgentPool pool = null;
  AgentPoolEvent();

  @override
  String toString() {
    return 'AgentPoolEvent[eventType=$eventType, pool=$pool, ]';
  }

  AgentPoolEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPool.fromJson(json['pool']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (pool != null)
      json['pool'] = pool;
    return json;
  }

  static List<AgentPoolEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentPoolEvent>() : json.map((value) => AgentPoolEvent.fromJson(value)).toList();
  }

  static Map<String, AgentPoolEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentPoolEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentPoolEvent.fromJson(value));
    }
    return map;
  }
}

