part of azure_devops_sdk.api;

class AgentQueueEvent {
  
  String eventType = null;
  
  TaskAgentQueue queue = null;
  AgentQueueEvent();

  @override
  String toString() {
    return 'AgentQueueEvent[eventType=$eventType, queue=$queue, ]';
  }

  AgentQueueEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['queue'] == null) {
      queue = null;
    } else {
      queue = TaskAgentQueue.fromJson(json['queue']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (queue != null)
      json['queue'] = queue;
    return json;
  }

  static List<AgentQueueEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentQueueEvent>() : json.map((value) => AgentQueueEvent.fromJson(value)).toList();
  }

  static Map<String, AgentQueueEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentQueueEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentQueueEvent.fromJson(value));
    }
    return map;
  }
}

