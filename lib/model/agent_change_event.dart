part of azure_devops_sdk.api;

class AgentChangeEvent {
  
  TaskAgent agent = null;
  
  String eventType = null;
  
  TaskAgentPoolReference pool = null;
  AgentChangeEvent();

  @override
  String toString() {
    return 'AgentChangeEvent[agent=$agent, eventType=$eventType, pool=$pool, ]';
  }

  AgentChangeEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgent.fromJson(json['agent']);
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (eventType != null)
      json['eventType'] = eventType;
    if (pool != null)
      json['pool'] = pool;
    return json;
  }

  static List<AgentChangeEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentChangeEvent>() : json.map((value) => AgentChangeEvent.fromJson(value)).toList();
  }

  static Map<String, AgentChangeEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentChangeEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentChangeEvent.fromJson(value));
    }
    return map;
  }
}

